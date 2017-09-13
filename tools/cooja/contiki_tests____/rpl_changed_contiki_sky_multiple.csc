<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>My simulation</title>
    <randomseed>generated</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      se.sics.cooja.radiomediums.UDGM
      <transmitting_range>50.0</transmitting_range>
      <interference_range>100.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      se.sics.cooja.mspmote.SkyMoteType
      <identifier>sky1</identifier>
      <description>Sky Mote Type #skyserver</description>
      <source EXPORT="discard">[CONFIG_DIR]/RPL-changed/examples/ipv6/rpl-udp/udp-server.c</source>
      <commands EXPORT="discard">make udp-server.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONFIG_DIR]/RPL-changed/examples/ipv6/rpl-udp/udp-server.sky</firmware>
      <moteinterface>se.sics.cooja.interfaces.Position</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <motetype>
      se.sics.cooja.mspmote.SkyMoteType
      <identifier>sky2</identifier>
      <description>Sky Mote Type #skyclient</description>
      <source EXPORT="discard">[CONFIG_DIR]/RPL-changed/examples/ipv6/rpl-udp/udp-client.c</source>
      <commands EXPORT="discard">make udp-client.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONFIG_DIR]/RPL-changed/examples/ipv6/rpl-udp/udp-client.sky</firmware>
      <moteinterface>se.sics.cooja.interfaces.Position</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>se.sics.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyButton</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyFlash</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyCoffeeFilesystem</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspSerial</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyLED</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
      <moteinterface>se.sics.cooja.mspmote.interfaces.SkyTemperature</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>88.55871287573021</x>
        <y>32.99546740912778</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>sky1</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>27.98692564699713</x>
        <y>94.36924712149943</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>38.96248166433804</x>
        <y>32.618466134441505</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>74.51276076722462</x>
        <y>30.290901073252574</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>16.61240476218685</x>
        <y>64.44839116465971</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>81.26453961009527</x>
        <y>75.61534655413195</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>3.913760553939283</x>
        <y>15.182049258175855</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>82.5721198749497</x>
        <y>86.13732136884624</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>74.79307702264457</x>
        <y>71.0818090385557</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>0.04446441472758522</x>
        <y>71.91233502225455</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>17.49470262113575</x>
        <y>62.19342076242379</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>56.60754559427916</x>
        <y>20.200914153568682</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>1.1551738653142296</x>
        <y>99.65559862787103</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>21.83988954536139</x>
        <y>98.47594955506226</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>22.320664040263548</x>
        <y>58.16169517235842</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>35.771212633020355</x>
        <y>83.45833904103837</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>17.02071263900794</x>
        <y>12.823120825940503</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>17</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>1.4511802467010337</x>
        <y>34.39224173989221</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>18</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>79.05185240422082</x>
        <y>22.242255909715393</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>19</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>52.09403448499843</x>
        <y>32.896135042702845</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>20</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>11.164811368796123</x>
        <y>46.509959825034095</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>21</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>34.605289197112334</x>
        <y>52.90512045470521</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>22</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>15.877150761649816</x>
        <y>63.86919042924071</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>23</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>66.88088990539624</x>
        <y>56.06691909571019</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>24</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>93.07516766020927</x>
        <y>27.6384231158032</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>25</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>16.456634741974042</x>
        <y>57.51951430034307</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>26</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>87.28796009995628</x>
        <y>96.31130800467915</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>27</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>68.8334912893647</x>
        <y>99.7506940174367</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>28</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>26.813490649434456</x>
        <y>96.12419525647846</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>29</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>47.00695659310844</x>
        <y>57.144597515153436</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>30</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>26.48961347807256</x>
        <y>94.3303556863704</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>31</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>62.218115565683576</x>
        <y>68.22109720998468</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>32</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>16.00809724487301</x>
        <y>91.39603771802268</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>33</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>8.48989444607101</x>
        <y>27.271147549928997</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>34</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>84.87990960514125</x>
        <y>85.73330452392683</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>35</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>9.821259376031943</x>
        <y>31.3235613631219</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>36</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>55.526380243925765</x>
        <y>40.740137559098166</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>37</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>24.629384763875873</x>
        <y>64.82153777141207</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>38</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>57.981383644129046</x>
        <y>42.09882778052075</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>39</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>53.73704524045512</x>
        <y>54.15425930535408</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>40</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>57.2703508969547</x>
        <y>85.69655051986904</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>41</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>68.4191767434943</x>
        <y>51.830485986787025</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>42</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>0.045905539305790555</x>
        <y>81.32145476929895</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>43</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>17.205971596926993</x>
        <y>28.58586621900163</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>44</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>96.30804898558232</x>
        <y>3.5359164573952717</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>45</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>13.684114832366612</x>
        <y>97.50914187337474</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>46</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>29.25731709270113</x>
        <y>13.855051153448727</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>47</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>92.77541026087255</x>
        <y>52.21810639832345</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>48</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>9.198141532523863</x>
        <y>23.520442082900892</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>49</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>26.172083677634493</x>
        <y>29.514676648407512</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>50</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        se.sics.cooja.interfaces.Position
        <x>22.03975307095436</x>
        <y>55.65069014383203</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        se.sics.cooja.mspmote.interfaces.MspMoteID
        <id>51</id>
      </interface_config>
      <motetype_identifier>sky2</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    se.sics.cooja.plugins.SimControl
    <width>280</width>
    <z>0</z>
    <height>160</height>
    <location_x>686</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>se.sics.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <viewport>6.179356951425025 0.0 0.0 6.179356951425025 38.301713266261075 7.877582786609126</viewport>
    </plugin_config>
    <width>685</width>
    <z>2</z>
    <height>708</height>
    <location_x>1</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <formatted_time />
      <coloring />
    </plugin_config>
    <width>1032</width>
    <z>4</z>
    <height>779</height>
    <location_x>688</location_x>
    <location_y>160</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>function gaussianRand() {&#xD;
  var rand = 0;&#xD;
&#xD;
  for (var i = 0; i &lt; 6; i += 1) {&#xD;
    rand += Math.random();&#xD;
  }&#xD;
&#xD;
  return rand / 6;&#xD;
}&#xD;
&#xD;
function gaussianRandom(start, end) {&#xD;
  return Math.floor(start + gaussianRand() * (end - start + 1));&#xD;
}&#xD;
&#xD;
//--------------------------------------------------------------------------------------&#xD;
function onlyUnique(value, index, self) { &#xD;
    return self.indexOf(value) === index;&#xD;
}&#xD;
//--------------------------------------------------------------------------------------&#xD;
Array.prototype.arraySplice = function(array, start, deleteCount) {&#xD;
  var result = [];&#xD;
  var removed = [];&#xD;
  var argsLen = arguments.length;&#xD;
  var arrLen = array.length;&#xD;
  var i, k;&#xD;
&#xD;
  // Follow spec more or less&#xD;
  start = parseInt(start, 10);&#xD;
  deleteCount = parseInt(deleteCount, 10);&#xD;
&#xD;
  // Deal with negative start per spec&#xD;
  // Don't assume support for Math.min/max&#xD;
  if (start &lt; 0) {&#xD;
    start = arrLen + start;&#xD;
    start = (start &gt; 0)? start : 0;&#xD;
  } else {&#xD;
    start = (start &lt; arrLen)? start : arrLen;&#xD;
  }&#xD;
&#xD;
  // Deal with deleteCount per spec&#xD;
  if (deleteCount &lt; 0) deleteCount = 0;&#xD;
&#xD;
  if (deleteCount &gt; (arrLen - start)) {&#xD;
    deleteCount = arrLen - start;&#xD;
  }&#xD;
&#xD;
  // Copy members up to start&#xD;
  for (i = 0; i &lt; start; i++) {&#xD;
    result[i] = array[i];&#xD;
  }&#xD;
&#xD;
  // Add new elements supplied as args&#xD;
  for (i = 3; i &lt; argsLen; i++) {&#xD;
    result.push(arguments[i]);&#xD;
  }&#xD;
&#xD;
  // Copy removed items to removed array&#xD;
  for (i = start; i &lt; start + deleteCount; i++) {&#xD;
    removed.push(array[i]);&#xD;
  }&#xD;
&#xD;
  // Add those after start + deleteCount&#xD;
  for (i = start + (deleteCount || 0); i &lt; arrLen; i++) {&#xD;
    result.push(array[i]);&#xD;
  }&#xD;
&#xD;
  // Update original array&#xD;
  array.length = 0;&#xD;
  i = result.length;&#xD;
  while (i--) {&#xD;
    array[i] = result[i];&#xD;
  }&#xD;
&#xD;
  // Return array of elements&#xD;
  return result;&#xD;
&#xD;
}&#xD;
&#xD;
&#xD;
&#xD;
//-----------------------------------------------------&#xD;
function parse_mote_relations(str){&#xD;
	//log.log("jestem w parse_mote_relations \n");&#xD;
	 var current_str = "abcdef";&#xD;
	 var i = 0;&#xD;
	current_str = str.slice();&#xD;
	//log.log("current_str "+current_str+" \n");&#xD;
	var first_number_str = "";&#xD;
	var it=3;&#xD;
	&#xD;
    while(current_str[it] != " " ){&#xD;
		//log.log("current_str[it]: "+current_str[it]+"\n");&#xD;
        	first_number_str += current_str[it];&#xD;
        	it++;&#xD;
     	}&#xD;
&#xD;
	var first_number = parseInt(first_number_str);&#xD;
	//log.log("zwracam w parse_mote_relations  first number: "+first_number+"\n");&#xD;
	return first_number ;&#xD;
}&#xD;
&#xD;
//--------------------------------------------------------------------------------------&#xD;
// symulacje:&#xD;
//rpl_changed_nbr_z1 = oryginal&#xD;
//rpl_changed_contiki_z1 - zmieniony&#xD;
// wersja dla 1+n wezłow&#xD;
&#xD;
var moteType = mote.getType();&#xD;
var my_sim = mote.getSimulation();&#xD;
var number_of_clients = 50;&#xD;
//var mote_id_to_remove = gaussianRandom(2, number_of_clients+1); // dla n klientow: n+1&#xD;
var mote_id_to_remove = 9;&#xD;
var motes_ids_array = new Array();&#xD;
var reconstruction_times = new Array();&#xD;
var motes_array = new Array();&#xD;
var all_motes = [];&#xD;
var all_motes_temp = sim.getMotes();&#xD;
var i = 0;&#xD;
var str = "";&#xD;
var map_of_relations = {};&#xD;
var counter = 0;&#xD;
var started_reconstruction = false;&#xD;
var array_of_values_arrays = new Array(all_motes_temp.length);&#xD;
var first_number = 0;&#xD;
var last_number = 0;&#xD;
&#xD;
for (var i = 1; i &lt;= all_motes_temp.length; i++) {&#xD;
	all_motes[i] = all_motes_temp[i-1];&#xD;
}&#xD;
&#xD;
/*for (var i = 0; i &lt; all_motes.length; i++) {&#xD;
	log.log("all_motes[i]: "+all_motes[i]+"\n"); &#xD;
}*/&#xD;
&#xD;
for (var i = 0; i &lt; all_motes.length; i++) {&#xD;
	if(all_motes[i] != null){&#xD;
		motes_ids_array[i] = all_motes[i].getID();  &#xD;
	}&#xD;
}&#xD;
/*for (var i = 0; i &lt; motes_ids_array.length; i++) {&#xD;
	log.log("motes_ids_array[i]: "+motes_ids_array[i]+"\n"); &#xD;
}*/&#xD;
&#xD;
for (var i = 1; i &lt;= all_motes_temp.length; i++) {&#xD;
	map_of_relations[i] = [];&#xD;
}&#xD;
//--------------------------------------------------------------&#xD;
// zapisuje wszystkie strzalki w symulacji&#xD;
while(!started_reconstruction){&#xD;
	YIELD();&#xD;
		if(msg.contains("#L")){&#xD;
			// znajduje id wezla, ktory dal wiadomosc&#xD;
			&#xD;
			for (var i = 2; i &lt; all_motes.length; i++) {&#xD;
				//log.log("jestem w for, i ="+i+"\n");&#xD;
				var message = all_motes[i].getInterfaces().getLog().getLastLogMessage();&#xD;
				if(message.equals(msg)){&#xD;
					first_number = motes_ids_array[i];&#xD;
					last_number = parse_mote_relations(msg); // pierwsza liczba z parsowania&#xD;
					/*log.log("first number last number: "+first_number+" "+last_number+"\n");&#xD;
					log.log("message: "+message+"\n");&#xD;
					log.log("msg: "+msg+"\n");*/&#xD;
					map_of_relations[last_number].push(first_number); // najpierw koniec strzalki, potem poczatek&#xD;
					break;&#xD;
				}&#xD;
			}&#xD;
        }&#xD;
		if(msg.contains("blue")){&#xD;
			 //log.log("Stworzyl sie graf \n");&#xD;
			 started_reconstruction = true;&#xD;
			 break;&#xD;
		 }&#xD;
}&#xD;
&#xD;
var array_ = [];&#xD;
/*log.log("typeof map_of_relations[0]: "+typeof map_of_relations[0]+"\n");&#xD;
log.log("typeof map_of_relations[1]: "+typeof map_of_relations[1]+"\n");&#xD;
log.log("typeof map_of_relations[2]: "+typeof map_of_relations[2]+"\n");&#xD;
log.log("typeof map_of_relations[3]: "+typeof map_of_relations[3]+"\n");*/&#xD;
&#xD;
//&#xD;
for(var i = 1; i&lt;all_motes.length; i++){&#xD;
	//log.log("jestem w for, all_motes indeks: "+i+"\n");&#xD;
	if(map_of_relations[i] != null){&#xD;
		array_ = map_of_relations[i];&#xD;
		//log.log("array_.length: "+array_.length+"\n");&#xD;
		/*for(var j = 0; j&lt;array_.length; j++){&#xD;
			log.log("array_[j]: "+array_[j]+"\n");&#xD;
		}*/&#xD;
	//log.log("\n");&#xD;
	}&#xD;
}&#xD;
&#xD;
sim.removeMote(sim.getMoteWithID(mote_id_to_remove));&#xD;
//log.log("Usuwam wezel numer "+mote_id_to_remove+" \n");&#xD;
var reconstruction_start = mote.getSimulation().getSimulationTime();&#xD;
var str = "";&#xD;
&#xD;
/* Extract PowerTracker statistics */&#xD;
  plugin = mote.getSimulation().getGUI().getStartedPlugin("PowerTracker");&#xD;
  if (plugin != null) {&#xD;
    stats = plugin.radioStatistics();&#xD;
    log.log("PowerTracker: Extracted statistics:\n" + stats + "\n");&#xD;
  } else {&#xD;
    log.log("No PowerTracker plugin\n");&#xD;
  }&#xD;
// aktualizuje tablice po usunieciu wezla&#xD;
&#xD;
all_motes = all_motes.arraySplice(all_motes,mote_id_to_remove-1 ,1);&#xD;
//log.log("Po array splice: \n");&#xD;
&#xD;
/*for (var i = 1; i &lt;= all_motes.length; i++) {&#xD;
	log.log("all_motes[i]: "+all_motes[i]+"\n");&#xD;
}*/&#xD;
&#xD;
// zapisuje indentyfikatory wezlow&#xD;
var i = 0;&#xD;
while(all_motes[i] != null){&#xD;
	 motes_ids_array[i] = all_motes[i].getID();  &#xD;
	 i++;&#xD;
}&#xD;
&#xD;
// zapisuje wezly, ktore prowadzily do usunietego wezla - one maja miec skonczona rekonstrukcje&#xD;
var arrows_to_removed = map_of_relations[mote_id_to_remove]; // elementy np. 3 i 6&#xD;
&#xD;
if(arrows_to_removed.length == 0){&#xD;
	log.log("Usuniety wezel nie spoowodowal zmiany konstrukcji grafu!\n");&#xD;
}&#xD;
&#xD;
/*for (var i = 0; i &lt; arrows_to_removed.length; i++) {&#xD;
	log.log("arrows_to_removed[i]: "+arrows_to_removed[i]+"\n");&#xD;
}*/&#xD;
var unique = arrows_to_removed.filter( onlyUnique ); &#xD;
/*for (var i = 0; i &lt; unique.length; i++) {&#xD;
	log.log("unique[i]: "+unique[i]+"\n");&#xD;
}*/&#xD;
//log.log("jestem po unique\n");&#xD;
// sprawdzam, czy skonczyla sie rekonstrukcja&#xD;
while(unique.length&gt;0){&#xD;
    YIELD();&#xD;
    for (var i = 0; i &lt; unique.length; i++) {&#xD;
        //log.log("unique[i]: "+unique[i]+"\n");&#xD;
        &#xD;
		if(sim.getMoteWithID(arrows_to_removed[i]).getInterfaces().getLog().getLastLogMessage().equals("Reconstruction ended ")){&#xD;
			/*log.log("wykrylam koniec rekonstrukcji na wezle o id : ");&#xD;
			log.log(unique[i]);&#xD;
			log.log("\n");*/&#xD;
			unique = unique.arraySplice(unique,i,1);&#xD;
            //log.log("unique.length: "+unique.length+"\n");&#xD;
         }&#xD;
    }&#xD;
}&#xD;
&#xD;
//log.log("Jestem po petlach \n");&#xD;
&#xD;
var reconstruction_ended = mote.getSimulation().getSimulationTime();&#xD;
&#xD;
/* Extract PowerTracker statistics */&#xD;
if (plugin != null) {&#xD;
    stats = plugin.radioStatistics();&#xD;
	log.log("PowerTracker: Extracted statistics:\n" + stats + "\n");&#xD;
  } else {&#xD;
    log.log("No PowerTracker plugin\n");&#xD;
  }&#xD;
&#xD;
&#xD;
log.log("Rekonstrukcja zajela: ");&#xD;
log.log((reconstruction_ended - reconstruction_start)/(1000*1000) );&#xD;
log.log(" sekund \n");</script>
      <active>true</active>
    </plugin_config>
    <width>600</width>
    <z>1</z>
    <height>700</height>
    <location_x>1072</location_x>
    <location_y>91</location_y>
  </plugin>
  <plugin>
    PowerTracker
    <width>400</width>
    <z>3</z>
    <height>400</height>
    <location_x>647</location_x>
    <location_y>571</location_y>
  </plugin>
</simconf>

