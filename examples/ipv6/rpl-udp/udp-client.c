/*
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */

#include "contiki.h"
#include "lib/random.h"
#include "sys/ctimer.h"
#include "net/uip.h"
#include "net/uip-ds6.h"
#include "net/uip-udp-packet.h"
#include "sys/ctimer.h"
#include "powertrace.h"
/*#ifdef WITH_COMPOWER
#include "powertrace.h"
#endif*/
#include <stdio.h>
#include <string.h>

#include "net/rime.h"
#include "random.h"
#include "sys/energest.h"
#include "dev/button-sensor.h"
#include "dev/leds.h"

#define UDP_CLIENT_PORT 8765
#define UDP_SERVER_PORT 5678

#define UDP_EXAMPLE_ID  190

#define DEBUG DEBUG_NONE
#include "net/uip-debug.h"

#ifndef PERIOD
#define PERIOD 60
#endif

#define START_INTERVAL		(15 * CLOCK_SECOND)
#define SEND_INTERVAL		(PERIOD * CLOCK_SECOND)
#define SEND_TIME		(random_rand() % (SEND_INTERVAL))
#define MAX_PAYLOAD_LEN		30

static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;
//int packets_received;
/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process);
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  char *str;

  if(uip_newdata()) {
    str = uip_appdata;
    str[uip_datalen()] = '\0';
    //printf("DATA recv '%s'\n", str);
    //packets_received++;
  }
}
/*---------------------------------------------------------------------------*/
static void
send_packet(void *ptr)
{
  static int seq_id;
  char buf[MAX_PAYLOAD_LEN];

  seq_id++;
  //PRINTF("DATA send to %d 'Hello %d'\n",
  //       server_ipaddr.u8[sizeof(server_ipaddr.u8) - 1], seq_id);
  //sprintf(buf, "Hello %d from the client", seq_id);
  uip_udp_packet_sendto(client_conn, buf, strlen(buf),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
  int i;
  uint8_t state;

  //PRINTF("Client IPv6 addresses: ");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused &&
       (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
      //PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      //PRINTF("\n");
      /* hack to make address "final" */
      if (state == ADDR_TENTATIVE) {
	uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }
}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
  uip_ipaddr_t ipaddr;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

/* The choice of server address determines its 6LoPAN header compression.
 * (Our address will be compressed Mode 3 since it is derived from our link-local address)
 * Obviously the choice made here must also be selected in udp-server.c.
 *
 * For correct Wireshark decoding using a sniffer, add the /64 prefix to the 6LowPAN protocol preferences,
 * e.g. set Context 0 to aaaa::.  At present Wireshark copies Context/128 and then overwrites it.
 * (Setting Context 0 to aaaa::1111:2222:3333:4444 will report a 16 bit compressed address of aaaa::1111:22ff:fe33:xxxx)
 *
 * Note the IPCMV6 checksum verification depends on the correct uncompressed addresses.
 */
 
#if 0
/* Mode 1 - 64 bits inline */
   uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 1);
#elif 1
/* Mode 2 - 16 bits inline */
  uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0x00ff, 0xfe00, 1);
#else
/* Mode 3 - derived from server link-local (MAC) address */
  uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0x0250, 0xc2ff, 0xfea8, 0xcd1a); //redbee-econotag
#endif
}
/*---------------------------------------------------------------------------*/
PROCESS_THREAD(udp_client_process, ev, data)
{
	static struct etimer et;
	static unsigned long rx_start_time, lpm_start_time, cpu_start_time,
				tx_start_time = 0;
		static unsigned long rx_new_time, lpm_new_time, cpu_new_time, tx_new_time =
				0;
  static struct etimer periodic;
  static struct ctimer backoff_timer;
#if WITH_COMPOWER
  static int print = 0;
#endif

  PROCESS_BEGIN();
  etimer_set(&et, 3 * CLOCK_SECOND);
  //powertrace_start(CLOCK_SECOND * 2);
  PROCESS_PAUSE();
  //powertrace_print("POWERTRACE: ");
  set_global_address();
  
  //PRINTF("UDP client process started\n");

  print_local_addresses();

  /* new connection with remote host */
  client_conn = udp_new(NULL, UIP_HTONS(UDP_SERVER_PORT), NULL); 
  if(client_conn == NULL) {
    //PRINTF("No UDP connection available, exiting the process!\n");
    PROCESS_EXIT();
  }
  udp_bind(client_conn, UIP_HTONS(UDP_CLIENT_PORT)); 

  /*PRINTF("Created a connection with the server ");
  PRINT6ADDR(&client_conn->ripaddr);
  PRINTF(" local/remote port %u/%u\n",
	UIP_HTONS(client_conn->lport), UIP_HTONS(client_conn->rport));*/

  energest_flush();
  	//packetbuf_copyfrom("Hello", 6);
  	//broadcast_send(&broadcast);
  	//printf("broadcast message sent\n");

  	rx_new_time = energest_type_time(ENERGEST_TYPE_LISTEN);
  	lpm_new_time = energest_type_time(ENERGEST_TYPE_LPM);
  	cpu_new_time = energest_type_time(ENERGEST_TYPE_CPU);
  	tx_new_time = energest_type_time(ENERGEST_TYPE_TRANSMIT);

  	printf("Time spent (micro sec) rx: %lu tx: %lu cpu: %lu lpm: %lu ",
  			(unsigned long) (1e6 * (rx_new_time - rx_start_time) / RTIMER_SECOND),
  			(unsigned long) (1e6 * (tx_new_time - tx_start_time) / RTIMER_SECOND),
  			(unsigned long) (1e6 * (cpu_new_time - cpu_start_time)
  					/ RTIMER_SECOND),
  			(unsigned long) (1e6 * (lpm_new_time - lpm_start_time)
  					/ RTIMER_SECOND));

  	printf("Total Energy: %lu uJ\n",
  			(unsigned long) ((21800 * 3 * (rx_new_time - rx_start_time)
  					/ RTIMER_SECOND)
  					+ (19500 * 3 * (tx_new_time - tx_start_time) / RTIMER_SECOND)
  					+ (1800 * 3 * (cpu_new_time - cpu_start_time)
  							/ RTIMER_SECOND)
  					+ (2.6 * 3 * (lpm_new_time - lpm_start_time) / RTIMER_SECOND)));

  	rx_start_time = energest_type_time(ENERGEST_TYPE_LISTEN);
  	lpm_start_time = energest_type_time(ENERGEST_TYPE_LPM);
  	cpu_start_time = energest_type_time(ENERGEST_TYPE_CPU);
  	tx_start_time = energest_type_time(ENERGEST_TYPE_TRANSMIT);

  	etimer_reset(&et);


#if WITH_COMPOWER
  powertrace_sniff(POWERTRACE_ON);
#endif

  etimer_set(&periodic, SEND_INTERVAL);
  /*char* packets_str;
  char* name_with_extension;
  const char* text_for_printing = "TEST: number of packets received by client: ";*/
  //char text[] = "TEST: number of packets received by client: ";
  //packets_received = 0;
  /*printf(packets_str, "%d", packets_received); // Now packets_str contains the integer as characters
  name_with_extension = malloc(strlen(text_for_printing)+1+4); // make space for the new string (should check the return value ...)
  strcpy(name_with_extension, text_for_printing); // copy name into the new var
  strcat(name_with_extension, packets_str); // add the extension
  puts(name_with_extension);
  printf("hello");*/
  while(1) {
	  //printf("TEST: number of packets received by client: %d", packets_received);


    PROCESS_YIELD();

    if(ev == tcpip_event) {
      tcpip_handler();
    }
    //text[44] = packets_received + '0';
    //puts(text);
    if(etimer_expired(&periodic)) {
      etimer_reset(&periodic);
      ctimer_set(&backoff_timer, SEND_TIME, send_packet, NULL);

#if WITH_COMPOWER
      if (print == 0) {
	powertrace_print("#P");
      }
      if (++print == 3) {
	print = 0;
      }
#endif

    }
  }
  //free(name_with_extension);
  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
