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
        <x>38.720143540705955</x>
        <y>50.32818033842108</y>
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
        <x>91.3082604253416</x>
        <y>36.38041743848639</y>
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
        <x>61.975759902445446</x>
        <y>42.71482224918688</y>
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
        <x>62.74989974708413</x>
        <y>65.2001217498235</y>
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
        <x>58.810000272678764</x>
        <y>69.83893648798997</y>
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
        <x>93.01500098818202</x>
        <y>34.09966033857953</y>
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
        <x>46.3224821142282</x>
        <y>99.75168908873096</y>
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
        <x>31.77446300183967</x>
        <y>4.682921431246212</y>
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
        <x>84.65551870540999</x>
        <y>48.90767944423121</y>
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
        <x>4.533660248274119</x>
        <y>83.74890064359725</y>
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
        <x>57.03320758968226</x>
        <y>97.44204753211065</y>
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
        <x>7.35852229494709</x>
        <y>41.95544968138465</y>
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
        <x>10.661155237855247</x>
        <y>71.49544072340812</y>
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
        <x>53.2479075825519</x>
        <y>4.167216798852347</y>
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
        <x>79.59901324808233</x>
        <y>42.46621890880136</y>
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
        <x>46.469321398348406</x>
        <y>46.547941438112176</y>
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
        <x>55.727944979502986</x>
        <y>8.657230377127423</y>
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
        <x>19.610547755917008</x>
        <y>65.90507313394892</y>
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
        <x>81.29335206511826</x>
        <y>34.30633117527103</y>
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
        <x>1.7487717326693852</x>
        <y>61.547856210639736</y>
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
        <x>4.865929241672539</x>
        <y>7.873831946118459</y>
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
        <x>80.25540359765787</x>
        <y>90.6388210195416</y>
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
        <x>75.15426464544052</x>
        <y>34.08481367755505</y>
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
        <x>50.7803105463591</x>
        <y>6.0505450377285275</y>
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
        <x>1.8297633577568417</x>
        <y>23.156668527656542</y>
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
        <x>14.522536506877525</x>
        <y>47.12003434575516</y>
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
        <x>26.987304490519925</x>
        <y>83.63566529472799</y>
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
        <x>15.812253972135249</x>
        <y>44.14442739905614</y>
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
        <x>67.3479661950184</x>
        <y>52.26258330302718</y>
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
        <x>20.304380319576744</x>
        <y>87.3943828131372</y>
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
        <x>77.78605910572466</x>
        <y>12.415346053968923</y>
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
        <x>10.909690024938644</x>
        <y>50.93302127713143</y>
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
        <x>77.89151704953633</x>
        <y>11.252319432236046</y>
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
        <x>38.343062807266335</x>
        <y>5.403748640668171</y>
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
        <x>81.40848740781185</x>
        <y>1.2077220686852241</y>
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
        <x>61.41708323517695</x>
        <y>86.6625286063742</y>
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
        <x>84.55637333970719</x>
        <y>12.661622261447192</y>
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
        <x>71.70680506619793</x>
        <y>47.83909207917611</y>
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
        <x>44.163761432331924</x>
        <y>37.30021865168271</y>
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
        <x>32.89899201206039</x>
        <y>29.965126373069808</y>
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
        <x>5.638414638462441</x>
        <y>33.96402478034426</y>
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
        <x>9.145965348656027</x>
        <y>64.2405530224552</y>
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
        <x>99.15566613175464</x>
        <y>95.9059399648644</y>
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
        <x>83.38638911537333</x>
        <y>20.54446885070752</y>
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
        <x>89.85820037114074</x>
        <y>67.78955246465821</y>
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
        <x>17.376936605927796</x>
        <y>49.845130088316004</y>
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
        <x>53.79505540349424</x>
        <y>17.07920420165998</y>
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
        <x>13.791252767852136</x>
        <y>20.321398347597686</y>
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
        <x>19.946828500085157</x>
        <y>34.52375134000698</y>
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
        <x>58.06478172167164</x>
        <y>10.561249176744347</y>
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
        <x>13.835200618041753</x>
        <y>16.219586947885134</y>
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
    <location_x>681</location_x>
    <location_y>-1</location_y>
  </plugin>
  <plugin>
    se.sics.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>se.sics.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>se.sics.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <viewport>5.941049088631197 0.0 0.0 5.941049088631197 33.260890693360196 22.097591177245125</viewport>
    </plugin_config>
    <width>679</width>
    <z>3</z>
    <height>698</height>
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
    <width>1039</width>
    <z>2</z>
    <height>740</height>
    <location_x>681</location_x>
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
/* plugin = mote.getSimulation().getGUI().getStartedPlugin("PowerTracker");&#xD;
  if (plugin != null) {&#xD;
    stats = plugin.radioStatistics();&#xD;
    log.log("PowerTracker: Extracted statistics:\n" + stats + "\n");&#xD;
  } else {&#xD;
    log.log("No PowerTracker plugin\n");&#xD;
  }*/&#xD;
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
/*if (plugin != null) {&#xD;
    stats = plugin.radioStatistics();&#xD;
	log.log("PowerTracker: Extracted statistics:\n" + stats + "\n");&#xD;
  } else {&#xD;
    log.log("No PowerTracker plugin\n");&#xD;
  }&#xD;
*/&#xD;
&#xD;
log.log("Rekonstrukcja zajela: ");&#xD;
log.log((reconstruction_ended - reconstruction_start)/(1000*1000) );&#xD;
log.log(" sekund \n");</script>
      <active>true</active>
    </plugin_config>
    <width>600</width>
    <z>1</z>
    <height>700</height>
    <location_x>1048</location_x>
    <location_y>279</location_y>
  </plugin>
</simconf>

