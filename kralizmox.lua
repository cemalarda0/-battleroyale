local players, bonus, admins = {}, {}, {
    ["Poklava#0000"] = true,
    ["Kralizmox#0000"] = true
}
local maps =
    {'<C><P L="4000" H="3500" F="1" DS="m;1547,1200,1239,1043,1898,1201,1287,1201" MEDATA=";;;;-0;0:::1-"/><Z><S><S T="9" X="1116" Y="1199" L="257" H="33" P="0,0,0,0,0,0,0,0"/><S T="12" X="1132" Y="976" L="290" H="180" P="0,0,0,0,0,0,0,0" o="2F1540" c="4"/><S T="0" X="2086" Y="1081" L="10" H="410" P="0,0,0.3,0.2,0,0,0,0"/><S T="0" X="1402" Y="1120" L="10" H="162" P="0,0,0,0.2,-50,0,0,0" c="3"/><S T="12" X="1248" Y="1203" L="10" H="44" P="0,0,0.3,0.2,0,0,0,0" o="A77545" N=""/><S T="0" X="1337" Y="1165" L="10" H="205" P="0,0,0.3,0.2,0,0,0,0" c="4"/><S T="0" X="1431" Y="1144" L="10" H="243" P="0,0,0.3,0.2,-50,0,0,0" c="4"/><S T="0" X="985" Y="1084" L="10" H="408" P="0,0,0.3,0.2,0,0,0,0"/><S T="0" X="1534" Y="881" L="1112" H="10" P="0,0,0.3,0.2,0,0,0,0" N=""/><S T="0" X="1278" Y="942" L="10" H="118" P="0,0,0.3,0.2,0,0,0,0" N=""/><S T="6" X="1536" Y="1250" L="1100" H="71" P="0,0,0.3,0.2,0,0,0,0" N=""/><S T="12" X="1119" Y="1220" L="267" H="10" P="0,0,0.3,0.2,0,0,0,0" o="A77545" N=""/><S T="0" X="1167" Y="1066" L="365" H="14" P="0,0,0.3,0.2,0,0,0,0" N=""/></S><D><P X="2056" Y="1216" T="67" P="0,1"/><P X="2005" Y="1216" T="68" P="1,0"/><P X="1954" Y="1216" T="67" P="0,0"/><P X="1844" Y="1216" T="67" P="0,1"/><P X="1793" Y="1216" T="68" P="1,0"/><P X="1742" Y="1216" T="67" P="0,0"/><P X="1095" Y="1062" T="17" P="1,0"/><P X="1181" Y="1065" T="127" C="784939,A31638" P="1,0"/><P X="1012" Y="1065" T="127" C="784939,A31638" P="1,0"/><P X="1103" Y="1028" T="21" P="0,0"/><P X="1628" Y="1217" T="1" P="0,0"/><P X="1693" Y="1242" T="5" P="0,2"/><P X="1733" Y="1242" T="5" P="0,2"/><P X="1773" Y="1242" T="5" P="0,2"/><P X="1813" Y="1242" T="5" P="0,2"/><P X="1853" Y="1242" T="5" P="0,2"/><P X="1893" Y="1242" T="5" P="0,2"/><P X="1933" Y="1242" T="5" P="0,2"/><P X="1973" Y="1242" T="5" P="0,2"/><P X="2013" Y="1242" T="5" P="0,2"/><P X="2053" Y="1242" T="5" P="0,2"/><P X="1289" Y="1242" T="5" P="0,2"/><P X="1649" Y="1242" T="5" P="0,2"/><P X="1609" Y="1242" T="5" P="0,2"/><P X="1569" Y="1242" T="5" P="0,2"/><P X="1529" Y="1242" T="5" P="0,2"/><P X="1489" Y="1242" T="5" P="0,2"/><P X="1449" Y="1242" T="5" P="0,2"/><P X="1409" Y="1242" T="5" P="0,2"/><P X="1369" Y="1242" T="5" P="0,2"/><P X="1329" Y="1242" T="5" P="0,2"/><P X="2007" Y="1178" T="73" P="0,0"/><P X="1795" Y="1176" T="71" P="0,0"/><P X="1896" Y="1217" T="148" P="0,0"/><P X="1128" Y="918" T="192" P="1,0"/><P X="1099" Y="1024" T="52" P="1,0"/></D><O><O X="1115" Y="1186" C="610" P="0"/><O X="1335" Y="1046" C="612" P="0"/><O X="1421" Y="1201" C="604" P="0"/></O><L/></Z></C>',
     '<C><P reload="true" bh="" L="3000" G="0,0" DS="m;623,265,2476,506,1500,1800,500,1000,2092,2584,300,2800,2347,1802,1154,701,2900,2700,1865,700" H="3000" segments="nogravmove" /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="26af2f" X="1500" c="4" Y="1500" T="12" H="3000" /><S P="0,0,0.3,0.2,90,0,0,0" L="3000" o="2b9732" X="1500" c="3" Y="-1500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="-1500" c="3" Y="1500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="4500" c="3" Y="1500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="1500" c="3" Y="4500" T="12" H="3000" /><S P="1,999999,0.3,0,0,0,0,0" L="3000" X="1500" c="3" Y="3220" T="19" m="" H="40" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="-1500" Y="4500" T="12" H="3000" /><S P="1,999999,0.3,0,0,0,0,0" L="3000" X="1500" c="3" Y="-220" T="19" m="" H="40" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="4500" Y="4500" T="12" H="3000" /><S P="1,999999,0.3,0,0,0,0,0" L="40" X="-220" c="3" Y="1500" T="19" m="" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="4500" Y="-1500" T="12" H="3000" /><S P="1,999999,0.3,0,0,0,0,0" L="40" X="3220" c="3" Y="1500" T="19" m="" H="3000" /><S P="1,999999,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="-1700" c="3" Y="1500" T="12" H="3000" /><S P="1,999999,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="1500" c="3" Y="-1700" T="12" H="3000" /><S P="1,999999,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="1500" c="3" Y="4700" T="12" H="3000" /><S P="1,999999,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="4700" c="3" Y="1500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="2b9732" X="-1500" Y="-1500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="200" o="1dc525" H="10" Y="672" T="13" X="492" /><S P="0,0,0.3,0.2,0,0,0,0" L="200" o="1dc525" H="10" Y="1070" T="13" X="2518" /><S P="0,0,0.3,0.2,0,0,0,0" L="500" o="f5ff4a" X="2450" c="4" Y="1830" T="12" H="500" /><S P="0,0,0.3,0.2,90,0,0,0" L="52" o="ff8f00" X="2453" Y="2054" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="540" X="2435" c="2" Y="1585" T="8" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="ff8f00" X="2192" Y="1830" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="ff8f00" X="2678" Y="1830" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="1000" o="f5ff4a" X="1508" c="4" Y="653" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="1000" X="1510" c="2" Y="898" T="8" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="ff8f00" X="1510" Y="653" T="12" H="500" /><S P="0,0,0.3,0.2,90,0,0,0" L="52" o="ff8f00" X="1510" Y="429" T="12" H="1000" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="ff8f00" X="1984" Y="653" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="52" o="ff8f00" X="1033" Y="653" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="2540" T="13" X="515" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="2540" T="13" X="980" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="2095" T="13" X="515" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="2095" T="13" X="980" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="1650" T="13" X="515" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="1650" T="13" X="980" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="2095" T="13" X="1450" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="1650" T="13" X="1450" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="1dc525" H="10" Y="2540" T="13" X="1450" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="d0d0d0" X="2733" Y="2570" T="12" H="500" /><S P="0,0,0.3,0.2,90,0,0,0" L="100" o="d0d0d0" X="2274" Y="2772" T="12" H="500" /><S P="0,0,0.3,0.2,90,0,0,0" L="100" o="d0d0d0" X="2274" Y="2372" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="100" o="d0d0d0" X="1813" Y="2570" T="12" H="500" /><S P="0,0,0.3,0.2,0,0,0,0" L="250" o="0046ff" X="349" c="4" Y="1241" T="13" H="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="250" o="0046ff" X="1852" c="4" Y="1343" T="13" H="10" /><S L="40" X="1745" H="40" Y="550" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="2435" H="40" Y="1940" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="2435" H="40" Y="1790" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="2435" H="40" Y="1640" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="1270" H="40" Y="550" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="1270" H="40" Y="700" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="1745" H="40" Y="700" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="1270" H="40" Y="850" T="19" P="1,0,0.3,0,0,0,0,0" /><S L="40" X="1745" H="40" Y="850" T="19" P="1,0,0.3,0,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="4500" c="3" Y="4500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="-1500" c="3" Y="4500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="4500" c="3" Y="-1500" T="12" H="3000" /><S P="0,0,0.3,0.2,0,0,0,0" L="3000" o="C22626" X="-1500" c="3" Y="-1500" T="12" H="3000" /><S P="0,0,0.3,0,0,0,0,0" L="120" X="750" c="3" Y="2320" T="19" H="120" /><S P="0,0,0.3,0,0,0,0,0" L="120" X="1220" c="3" Y="1870" T="19" H="120" /><S P="0,0,0.3,0,0,0,0,0" L="120" X="2274" c="3" Y="2580" T="19" H="120" /><S P="0,0,0.3,0,180,0,0,0" L="40" X="1033" c="3" Y="1103" T="19" H="400" /><S P="0,0,0.3,0,0,0,0,0" L="40" X="2192" c="3" Y="1380" T="19" H="400" /><S P="0,0,0.3,0,0,0,0,0" L="40" X="492" c="3" Y="255" T="19" H="200" /><S P="0,0,0.3,0,0,0,0,0" L="80" X="145" c="3" Y="672" T="19" H="40" /><S P="0,0,0.3,0,0,0,0,0" L="40" X="1510" c="3" Y="303" T="19" H="200" /><S P="0,0,0.3,0,0,0,0,0" L="40" X="1813" c="3" Y="2020" T="19" H="600" /><S P="0,0,0.3,0,0,0,0,0" L="40" X="1570" c="3" Y="1183" T="19" H="240" /><S P="0,0,0.3,0,90,0,0,0" L="40" X="2764" c="3" Y="2060" T="19" H="120" /><S P="0,0,0.3,0,0,0,0,0" L="40" X="980" c="3" Y="2880" T="19" H="240" /><S P="0,0,0.3,0,90,0,0,0" L="40" X="120" c="3" Y="2095" T="19" H="240" /><S P="0,0,0.3,0,90,0,0,0" L="40" X="2200" c="3" Y="653" T="19" H="380" /><S P="0,0,0.3,0,-90,0,0,0" L="40" X="2810" c="3" Y="653" T="19" H="380" /></S><D><P X="870" Y="1190" T="1" P="1,0" /><P X="1376" Y="1464" T="1" P="1,0" /><P X="855" Y="1490" T="5" P="1,0" /><P X="755" Y="1896" T="5" P="1,0" /><P X="175" Y="2022" T="5" P="1,0" /><P X="1215" Y="2470" T="5" P="1,0" /><P X="1859" Y="2160" T="2" P="1,0" /><P X="2461" Y="2626" T="2" P="1,0" /><P X="729" Y="2847" T="2" P="1,0" /><P X="111" Y="888" T="2" P="1,0" /><P X="751" Y="442" T="12" P="1,0" /><P X="2033" Y="264" T="12" P="1,0" /><P X="2165" Y="1129" T="1" P="1,0" /><P X="866" Y="750" T="11" P="1,0" /><P X="1529" Y="1105" T="11" P="1,0" /><P X="1853" Y="1791" T="11" P="1,0" /><P X="2583" Y="2234" T="11" P="1,0" /><P X="2047" Y="2575" T="3" P="1,0" /><P X="1073" Y="254" T="3" P="1,0" /><P X="202" Y="290" T="1" P="1,0" /><P X="1420" Y="200" T="1" P="1,0" /><P X="2515" Y="523" T="1" P="1,0" /><P X="216" Y="2565" T="5" P="1,0" /><P X="253" Y="1372" T="84" P="1,0" /><P X="467" Y="1129" T="84" P="1,0" /><P X="1794" Y="1223" T="84" P="1,0" /><P X="1919" Y="1526" T="84" P="1,0" /><P C="4b8e72" Y="1248" T="85" X="330" P="1,0" /><P C="4b8e72" Y="1356" T="85" X="1831" P="1,0" /><P X="1614" Y="2906" T="2" P="1,0" /><P X="2819" Y="1893" T="12" P="1,0" /><P X="2903" Y="2549" T="12" P="1,0" /><P X="1198" Y="2943" T="1" P="1,0" /><P X="191" Y="2928" T="1" P="1,0" /><P X="2845" Y="1431" T="1" P="1,0" /><P X="2210" Y="729" T="3" P="1,0" /><P X="106" Y="558" T="3" P="1,0" /><P X="182" Y="1686" T="3" P="1,0" /><P X="733" Y="2448" T="3" P="1,0" /><P X="2263" Y="2499" T="11" P="1,0" /></D><O /><L><JP MV="Infinity,-0.3" M1="9" AXIS="1,0" /><JP MV="Infinity,0.3" M1="11" AXIS="1,0" /><JP MV="Infinity,-0.3" M1="7" AXIS="0,1" /><JP MV="Infinity,0.3" M1="5" AXIS="0,1" /><JP MV="Infinity,-0.3" M1="12" AXIS="1,0" /><JP MV="Infinity,0.3" M1="15" AXIS="1,0" /><JP MV="Infinity,-0.3" M1="13" AXIS="0,1" /><JP MV="Infinity,0.3" M1="14" AXIS="0,1" /></L></Z></C>'}
local gameStarted, keys = false, {0, 1, 2, 3, 32, 80}
local bonusTime = 0

for _, i in next,
    {'AfkDeath', 'AutoShaman', 'MinimalistMode', 'WatchCommand', 'MortCommand', 'AutoNewGame', 'AutoScore',
     'PhysicalConsumables'} do
    tfm.exec["disable" .. i]()
end
system.disableChatCommandDisplay(nil, true)

for name in next, tfm.get.room.playerList do
    players[name] = {
        coin = 0,
        playing = false,
        cooldown = 1,
        speed = 50,
        lastObj,
        secondObj,
        thirdObj,
        obj = {
            id = 17,
            offset = 30,
            speed = 0,
            count = 1
        }
    }
    for i = 1, #keys do
        system.bindKeyboard(name, keys[i], true, true)
        system.bindKeyboard(name, keys[i], false, true)
    end
    tfm.exec.setPlayerScore(name, 0, false)
end

tfm.exec.newGame(maps[1])

eventNewPlayer = function(name)
    if not gameStarted then
        tfm.exec.respawnPlayer(name)
    end
    players[name] = {
        coin = 0,
        playing = false,
        cooldown = 1,
        speed = 50,
        lastObj,
        secondObj,
        thirdObj,
        obj = {
            id = 17,
            offset = 30,
            speed = 0,
            count = 1
        }
    }
    for i = 1, #keys do
        system.bindKeyboard(name, keys[i], true, true)
        system.bindKeyboard(name, keys[i], false, true)
    end
end

eventNewGame = function()
    if gameStarted then
        bonusTime = 0
        ui.removeTextArea(1)
        addBonus()
    else
        bonus = {}
        for name in next, players do
            players[name] = {
                coin = players[name].coin,
                playing = false,
                cooldown = 1,
                speed = 50,
                lastObj,
                secondObj,
                thirdObj,
                obj = {
                    id = players[name].obj.id,
                    offset = players[name].obj.offset,
                    speed = 0,
                    count = 1
                }
            }
        end
    end
end

eventPlayerDied = function(name)
    if gameStarted then
        players[name].playing = false
        if getPlaying() == 1 then
            tfm.exec.newGame(maps[1])
            for name in next, players do
                if players[name].playing then
                    tfm.exec.setPlayerScore(name, 1, true)
                    ui.addTextArea(1,
                        "<p align='center'><font size='22'><font color='#FFFFFF'>Kazanan </font><font color='#FF0000'>" ..
                            name .. "</font><font color='#FFFFFF'> !</font></font></p>", nil, 0, 30, 800, 45, nil, nil,
                        0, true)
                    players[name].playing = false
                end
            end
            gameStarted = false
        end
    end
end

eventChatCommand = function(name, cmd)
    if admins[name] then
        if cmd == "a" then
            gameStarted = true
            for name in next, players do
                players[name].playing = true
            end
            tfm.exec.newGame(maps[2])
        elseif cmd == "b" then
            gameStarted = false
            tfm.exec.newGame(maps[1])
        end
    end
end

eventKeyboard = function(name, key, down, x, y)
    if gameStarted then
        if key == 1 then
            if down then
                tfm.exec.movePlayer(name, 0, 0, false, 0, -players[name].speed, false)
            else
                tfm.exec.movePlayer(name, 0, 0, false, -1, -1, false)
                tfm.exec.movePlayer(name, 0, 0, false, 1, 1, true)
            end

        elseif key == 3 then
            if down then
                tfm.exec.movePlayer(name, 0, 0, false, 0, players[name].speed, false)
            else
                tfm.exec.movePlayer(name, 0, 0, false, -1, -1, false)
                tfm.exec.movePlayer(name, 0, 0, false, 1, 1, true)
            end

        elseif key == 0 then
            if down then
                tfm.exec.movePlayer(name, 0, 0, false, -players[name].speed, 0, false)
            else
                tfm.exec.movePlayer(name, 0, 0, false, -1, -1, false)
                tfm.exec.movePlayer(name, 0, 0, false, 1, 1, true)
            end

        elseif key == 2 then
            if down then
                tfm.exec.movePlayer(name, 0, 0, false, players[name].speed, 0, false)
            else
                tfm.exec.movePlayer(name, 0, 0, false, -1, -1, false)
                tfm.exec.movePlayer(name, 0, 0, false, 1, 1, true)
            end
        end
    else
        if key == 80 then

        end
    end
    if key == 0 or key == 1 or key == 2 or key == 3 then
        if down then
            players[name][3] = key
        end
    end
    if players[name].playing and key == 32 then
        if players[name].cooldown == 0 then
            if players[name].lastObj then
                tfm.exec.removeObject(players[name].lastObj)
            end
            if players[name].secondObj then
                tfm.exec.removeObject(players[name].secondObj)
            end
            if players[name].thirdObj then
                tfm.exec.removeObject(players[name].thirdObj)
            end
            if players[name][3] == 0 or players[name][3] == 2 then
                if players[name].obj.count == 1 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id,
                                                players[name][3] == 0 and x - players[name].obj.offset or x +
                                                    players[name].obj.offset, y, players[name][3] == 0 and -90 or 90)
                elseif players[name].obj.count == 2 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id,
                                                players[name][3] == 0 and x - players[name].obj.offset or x +
                                                    players[name].obj.offset, y + 15,
                                                players[name][3] == 0 and -90 or 90)
                    players[name].secondObj = tfm.exec.addShamanObject(players[name].obj.id,
                                                  players[name][3] == 0 and x - players[name].obj.offset or x +
                                                      players[name].obj.offset, y - 15,
                                                  players[name][3] == 0 and -90 or 90)
                elseif players[name].obj.count == 3 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id,
                                                players[name][3] == 0 and x - players[name].obj.offset or x +
                                                    players[name].obj.offset, y + 30,
                                                players[name][3] == 0 and -90 or 90)
                    players[name].secondObj = tfm.exec.addShamanObject(players[name].obj.id,
                                                  players[name][3] == 0 and x - players[name].obj.offset or x +
                                                      players[name].obj.offset, y,
                                                  players[name][3] == 0 and -90 or 90)
                    players[name].thirdObj = tfm.exec.addShamanObject(players[name].obj.id,
                                                  players[name][3] == 0 and x - players[name].obj.offset or x +
                                                      players[name].obj.offset, y - 30,
                                                  players[name][3] == 0 and -90 or 90)

                end
            else
                if players[name].obj.count == 1 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id, x, players[name][3] == 1 and
                                                y - players[name].obj.offset or y + players[name].obj.offset,
                                                players[name][3] == 1 and 0 or 180)
                elseif players[name].obj.count == 2 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id, x + 15, players[name][3] == 1 and
                                                y - players[name].obj.offset or y + players[name].obj.offset,
                                                players[name][3] == 1 and 0 or 180)
                    players[name].secondObj = tfm.exec.addShamanObject(players[name].obj.id, x - 15, players[name][3] == 1 and
                                                y - players[name].obj.offset or y + players[name].obj.offset,
                                                players[name][3] == 1 and 0 or 180)
                elseif players[name].obj.count == 3 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id, x + 30, players[name][3] == 1 and
                                                y - players[name].obj.offset or y + players[name].obj.offset,
                                                players[name][3] == 1 and 0 or 180)
                    players[name].secondObj = tfm.exec.addShamanObject(players[name].obj.id, x, players[name][3] == 1 and
                                                y - players[name].obj.offset or y + players[name].obj.offset,
                                                players[name][3] == 1 and 0 or 180)
                    players[name].thirdObj = tfm.exec.addShamanObject(players[name].obj.id, x-30, players[name][3] == 1 and
                                                y - players[name].obj.offset or y + players[name].obj.offset,
                                                players[name][3] == 1 and 0 or 180)
                end
            end
            players[name].cooldown = 4
        end
    end
end

eventLoop = function(a, b)
    if gameStarted then
        if a >= 9500 then
            for name in next, players do
                if players[name].cooldown > 0 then
                    players[name].cooldown = players[name].cooldown - 1
                end
            end
            bonusTime = bonusTime + 1
            if bonusTime == 2 then
                addBonus()
                bonusTime = 0
            end
        end
    end
end

eventPlayerBonusGrabbed = function(name, id)
    tfm.exec.removeImage(bonus[id].img)
    tfm.exec.removeBonus(id, nil)
    local event = math.random(1, 5)
    if event == 1 then
        if players[name].speed < 95 then
            players[name].speed = players[name].speed + 5
        end
    elseif event == 2 then
        if players[name].speed > 5 then
            players[name].speed = players[name].speed - 5
        end
    elseif event == 3 then
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x, bonus[id].y - 30, 0)
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x - 30, bonus[id].y, -90)
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x + 30, bonus[id].y, 90)
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x, bonus[id].y + 30, 180)
    elseif event == 4 then
        players[name].obj.count = 2
    elseif event == 5 then
        players[name].obj.count = 3
    end
end

-------------------------------------------------

getPlaying = function()
    local i = 0
    for name in next, players do
        if players[name].playing then
            i = i + 1
        end
    end
    return i
end

addBonus = function()
    local i, j = math.random(50, 2950), math.random(50, 2950)
    tfm.exec.addBonus(0, i, j, #bonus + 1, 0, false, nil)
    bonus[#bonus + 1] = {
        x = i,
        y = j,
        img = tfm.exec.addImage("16f1a0c1c4e.png", "!100", i - 32, j - 35, nil, 1.25, 1.25, 0, nil, nil, nil)
    }
end
