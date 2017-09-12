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
      <source EXPORT="discard">[CONFIG_DIR]/RPL-changed/RPL-changed/examples/ipv6/rpl-udp/udp-server.c</source>
      <commands EXPORT="discard">make udp-server.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONFIG_DIR]/RPL-changed/RPL-changed/examples/ipv6/rpl-udp/udp-server.sky</firmware>
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
      <source EXPORT="discard">[CONFIG_DIR]/RPL-changed/RPL-changed/examples/ipv6/rpl-udp/udp-client.c</source>
      <commands EXPORT="discard">make udp-client.sky TARGET=sky</commands>
      <firmware EXPORT="copy">[CONFIG_DIR]/RPL-changed/RPL-changed/examples/ipv6/rpl-udp/udp-client.sky</firmware>
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
        <x>15.721541617137447</x>
        <y>31.1339809373803</y>
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
        <x>82.05185830005334</x>
        <y>24.180910605511585</y>
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
        <x>34.944470792052904</x>
        <y>5.864762195543383</y>
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
        <x>54.928243369003084</x>
        <y>2.3959133574688485</y>
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
        <x>79.68694743751833</x>
        <y>15.884634477115023</y>
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
        <x>18.1095045384968</x>
        <y>65.55985515633681</y>
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
        <x>22.012992048545442</x>
        <y>44.71900431506594</y>
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
        <x>78.17544697651954</x>
        <y>30.19589140063661</y>
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
        <x>83.45956907582786</x>
        <y>51.29282879985551</y>
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
        <x>53.10035650696376</x>
        <y>91.31663633743108</y>
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
        <x>59.964070672988626</x>
        <y>70.24625222560942</y>
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
        <x>35.01770878480317</x>
        <y>55.71300132397889</y>
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
        <x>18.744274536119164</x>
        <y>28.42506350290043</y>
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
        <x>21.58396518451806</x>
        <y>14.16535688573396</y>
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
        <x>10.594727088192313</x>
        <y>3.2040289009218736</y>
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
        <x>44.29049074581775</x>
        <y>73.3587057071917</y>
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
        <x>45.606807590449094</x>
        <y>51.815625809788145</y>
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
        <x>98.83320833438493</x>
        <y>43.54623792455913</y>
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
        <x>13.569707897792005</x>
        <y>12.18638993424892</y>
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
        <x>80.37028185755159</x>
        <y>74.68620717738796</y>
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
        <x>27.824273837461178</x>
        <y>52.52442609128675</y>
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
        <x>82.1762878235277</x>
        <y>16.118524315439043</y>
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
        <x>13.625670375888632</x>
        <y>33.79325631064485</y>
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
        <x>95.99453471474942</x>
        <y>23.637737155552717</y>
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
        <x>73.04990019776085</x>
        <y>8.455875555734838</y>
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
        <x>88.81682509095211</x>
        <y>17.60925065805835</y>
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
        <x>10.516674409561988</x>
        <y>58.62333830097639</y>
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
        <x>17.33924410883111</x>
        <y>69.55376305723091</y>
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
        <x>41.89763021512414</x>
        <y>36.07638140601118</y>
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
        <x>57.347851248238804</x>
        <y>48.81684985385989</y>
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
        <x>80.17292539333629</x>
        <y>0.5660360439866619</y>
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
        <x>61.11162520429328</x>
        <y>30.409741389784973</y>
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
        <x>59.36638030870497</x>
        <y>17.296966088230683</y>
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
        <x>37.77105055852329</x>
        <y>58.15423955867514</y>
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
        <x>42.1429497950089</x>
        <y>11.449803135655234</y>
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
        <x>66.91655732276314</x>
        <y>80.62789767949741</y>
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
        <x>44.543273803293935</x>
        <y>39.83827818260419</y>
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
        <x>77.19595521986196</x>
        <y>61.26055232120391</y>
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
        <x>91.84642063615135</x>
        <y>16.09274624478244</y>
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
        <x>33.95622857998576</x>
        <y>86.89367564706856</y>
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
        <x>3.9197150304469353</x>
        <y>65.82100678813164</y>
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
        <x>2.6320635057605624</x>
        <y>13.230237107777254</y>
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
        <x>56.496914851451116</x>
        <y>27.664537376923327</y>
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
        <x>68.79822881567321</x>
        <y>41.36336984744905</y>
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
        <x>9.923699477837777</x>
        <y>1.6255521787470695</y>
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
        <x>68.40010560296453</x>
        <y>90.9027504315716</y>
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
        <x>70.76084131820367</x>
        <y>60.00693905795027</y>
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
        <x>90.49808465285203</x>
        <y>44.48164457670861</y>
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
        <x>9.416283827958072</x>
        <y>22.240550834221317</y>
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
        <x>73.67700283150236</x>
        <y>81.42561897756474</y>
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
    <z>1</z>
    <height>160</height>
    <location_x>690</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>se.sics.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <viewport>5.8401817540184995 0.0 0.0 5.8401817540184995 41.712185366327624 22.694246623792328</viewport>
    </plugin_config>
    <width>688</width>
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
    <height>696</height>
    <location_x>688</location_x>
    <location_y>160</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.Notes
    <plugin_config>
      <notes>Enter notes here</notes>
      <decorations>true</decorations>
    </plugin_config>
    <width>775</width>
    <z>5</z>
    <height>160</height>
    <location_x>945</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    PowerTracker
    <width>400</width>
    <z>3</z>
    <height>400</height>
    <location_x>364</location_x>
    <location_y>570</location_y>
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
var mote_id_to_remove = 30;&#xD;
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
    <z>0</z>
    <height>700</height>
    <location_x>1076</location_x>
    <location_y>273</location_y>
  </plugin>
</simconf>

