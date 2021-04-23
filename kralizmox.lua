local players, bonus, admins = {}, {}, {
    ["Poklava#0000"] = true,
    ["Kralizmox#0000"] = true
}
local maps =
    {'<C><P L="4000" H="3500" F="1" DS="m;1547,1200,1239,1043,1898,1201,1287,1201" MEDATA=";;;;-0;0:::1-"/><Z><S><S T="9" X="1116" Y="1199" L="257" H="33" P="0,0,0,0,0,0,0,0"/><S T="12" X="1132" Y="976" L="290" H="180" P="0,0,0,0,0,0,0,0" o="2F1540" c="4"/><S T="0" X="2086" Y="1081" L="10" H="410" P="0,0,0.3,0.2,0,0,0,0"/><S T="0" X="1402" Y="1120" L="10" H="162" P="0,0,0,0.2,-50,0,0,0" c="3"/><S T="12" X="1248" Y="1203" L="10" H="44" P="0,0,0.3,0.2,0,0,0,0" o="A77545" N=""/><S T="0" X="1337" Y="1165" L="10" H="205" P="0,0,0.3,0.2,0,0,0,0" c="4"/><S T="0" X="1431" Y="1144" L="10" H="243" P="0,0,0.3,0.2,-50,0,0,0" c="4"/><S T="0" X="985" Y="1084" L="10" H="408" P="0,0,0.3,0.2,0,0,0,0"/><S T="0" X="1534" Y="881" L="1112" H="10" P="0,0,0.3,0.2,0,0,0,0" N=""/><S T="0" X="1278" Y="942" L="10" H="118" P="0,0,0.3,0.2,0,0,0,0" N=""/><S T="6" X="1536" Y="1250" L="1100" H="71" P="0,0,0.3,0.2,0,0,0,0" N=""/><S T="12" X="1119" Y="1220" L="267" H="10" P="0,0,0.3,0.2,0,0,0,0" o="A77545" N=""/><S T="0" X="1167" Y="1066" L="365" H="14" P="0,0,0.3,0.2,0,0,0,0" N=""/></S><D><P X="2056" Y="1216" T="67" P="0,1"/><P X="2005" Y="1216" T="68" P="1,0"/><P X="1954" Y="1216" T="67" P="0,0"/><P X="1844" Y="1216" T="67" P="0,1"/><P X="1793" Y="1216" T="68" P="1,0"/><P X="1742" Y="1216" T="67" P="0,0"/><P X="1095" Y="1062" T="17" P="1,0"/><P X="1181" Y="1065" T="127" C="784939,A31638" P="1,0"/><P X="1012" Y="1065" T="127" C="784939,A31638" P="1,0"/><P X="1103" Y="1028" T="21" P="0,0"/><P X="1628" Y="1217" T="1" P="0,0"/><P X="1693" Y="1242" T="5" P="0,2"/><P X="1733" Y="1242" T="5" P="0,2"/><P X="1773" Y="1242" T="5" P="0,2"/><P X="1813" Y="1242" T="5" P="0,2"/><P X="1853" Y="1242" T="5" P="0,2"/><P X="1893" Y="1242" T="5" P="0,2"/><P X="1933" Y="1242" T="5" P="0,2"/><P X="1973" Y="1242" T="5" P="0,2"/><P X="2013" Y="1242" T="5" P="0,2"/><P X="2053" Y="1242" T="5" P="0,2"/><P X="1289" Y="1242" T="5" P="0,2"/><P X="1649" Y="1242" T="5" P="0,2"/><P X="1609" Y="1242" T="5" P="0,2"/><P X="1569" Y="1242" T="5" P="0,2"/><P X="1529" Y="1242" T="5" P="0,2"/><P X="1489" Y="1242" T="5" P="0,2"/><P X="1449" Y="1242" T="5" P="0,2"/><P X="1409" Y="1242" T="5" P="0,2"/><P X="1369" Y="1242" T="5" P="0,2"/><P X="1329" Y="1242" T="5" P="0,2"/><P X="2007" Y="1178" T="73" P="0,0"/><P X="1795" Y="1176" T="71" P="0,0"/><P X="1896" Y="1217" T="148" P="0,0"/><P X="1128" Y="918" T="192" P="1,0"/><P X="1099" Y="1024" T="52" P="1,0"/></D><O><O X="1115" Y="1186" C="610" P="0"/><O X="1335" Y="1046" C="612" P="0"/><O X="1421" Y="1201" C="604" P="0"/></O><L/></Z></C>',
     '<C><P L="3000" H="3000" G="0,0" DS="m;1500,1800" bh="" MEDATA=";;;;-0;0::0,1,2,3,4,5,6,7:1-" reload="true" segments="nogravmove"/><Z><S><S T="12" X="1500" Y="1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="26af2f" c="4"/><S T="12" X="1500" Y="-1500" L="3000" H="3000" P="0,0,0.3,0.2,90,0,0,0" o="2b9732" c="3"/><S T="12" X="-1500" Y="1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732" c="3"/><S T="12" X="4500" Y="1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732" c="3"/><S T="12" X="1500" Y="4500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732" c="3"/><S T="19" X="1500" Y="3220" L="3000" H="40" P="1,999999,0.3,0,0,0,0,0" c="3" m=""/><S T="12" X="-1500" Y="4500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732"/><S T="19" X="1500" Y="-220" L="3000" H="40" P="1,999999,0.3,0,0,0,0,0" c="3" m=""/><S T="12" X="4500" Y="4500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732"/><S T="19" X="-220" Y="1500" L="40" H="3000" P="1,999999,0.3,0,0,0,0,0" c="3" m=""/><S T="12" X="4500" Y="-1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732"/><S T="19" X="3220" Y="1500" L="40" H="3000" P="1,999999,0.3,0,0,0,0,0" c="3" m=""/><S T="12" X="-1700" Y="1500" L="3000" H="3000" P="1,999999,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="1500" Y="-1700" L="3000" H="3000" P="1,999999,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="1500" Y="4700" L="3000" H="3000" P="1,999999,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="4700" Y="1500" L="3000" H="3000" P="1,999999,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="-1500" Y="-1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="2b9732"/><S T="13" X="492" Y="672" L="200" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="2518" Y="1070" L="200" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="12" X="2450" Y="1830" L="500" H="500" P="0,0,0.3,0.2,0,0,0,0" o="f5ff4a" c="4"/><S T="12" X="2453" Y="2054" L="52" H="500" P="0,0,0.3,0.2,90,0,0,0" o="ff8f00"/><S T="19" X="2207" Y="1828" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="2663" Y="1828" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="8" X="2435" Y="1585" L="540" H="10" P="0,0,0.3,0.2,0,0,0,0" c="2"/><S T="12" X="2192" Y="1830" L="52" H="500" P="0,0,0.3,0.2,0,0,0,0" o="ff8f00"/><S T="12" X="2678" Y="1830" L="52" H="500" P="0,0,0.3,0.2,0,0,0,0" o="ff8f00"/><S T="12" X="1508" Y="653" L="1000" H="500" P="0,0,0.3,0.2,0,0,0,0" o="f5ff4a" c="4"/><S T="8" X="1510" Y="898" L="1000" H="10" P="0,0,0.3,0.2,0,0,0,0" c="2"/><S T="19" X="1495" Y="655" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1525" Y="655" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1969" Y="655" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="12" X="1510" Y="653" L="52" H="500" P="0,0,0.3,0.2,0,0,0,0" o="ff8f00"/><S T="12" X="1510" Y="429" L="52" H="1000" P="0,0,0.3,0.2,90,0,0,0" o="ff8f00"/><S T="19" X="1048" Y="655" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="12" X="1984" Y="653" L="52" H="500" P="0,0,0.3,0.2,0,0,0,0" o="ff8f00"/><S T="12" X="1033" Y="653" L="52" H="500" P="0,0,0.3,0.2,0,0,0,0" o="ff8f00"/><S T="13" X="515" Y="2540" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="980" Y="2540" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="515" Y="2095" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="980" Y="2095" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="515" Y="1650" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="980" Y="1650" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="1450" Y="2095" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="1450" Y="1650" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="13" X="1450" Y="2540" L="100" P="0,0,0.3,0.2,0,0,0,0" o="1dc525"/><S T="12" X="2733" Y="2570" L="100" H="500" P="0,0,0.3,0.2,0,0,0,0" o="d0d0d0"/><S T="12" X="2274" Y="2772" L="100" H="500" P="0,0,0.3,0.2,90,0,0,0" o="d0d0d0"/><S T="12" X="2274" Y="2372" L="100" H="500" P="0,0,0.3,0.2,90,0,0,0" o="d0d0d0"/><S T="12" X="1813" Y="2570" L="100" H="500" P="0,0,0.3,0.2,0,0,0,0" o="d0d0d0"/><S T="13" X="349" Y="1241" L="250" P="0,0,0.3,0.2,0,0,0,0" o="0046ff" c="4"/><S T="13" X="1852" Y="1343" L="250" P="0,0,0.3,0.2,0,0,0,0" o="0046ff" c="4"/><S T="19" X="1745" Y="550" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="2435" Y="1940" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="2435" Y="1790" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="2435" Y="1640" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="1270" Y="550" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="1270" Y="700" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="1745" Y="700" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="1270" Y="850" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="19" X="1745" Y="850" L="40" H="40" P="1,0,0.3,0,0,0,0,0"/><S T="12" X="4500" Y="4500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="-1500" Y="4500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="4500" Y="-1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="12" X="-1500" Y="-1500" L="3000" H="3000" P="0,0,0.3,0.2,0,0,0,0" o="C22626" c="3"/><S T="19" X="750" Y="2320" L="120" H="120" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1220" Y="1870" L="120" H="120" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="2274" Y="2580" L="120" H="120" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1033" Y="1103" L="40" H="400" P="0,0,0.3,0,180,0,0,0" c="3"/><S T="19" X="2192" Y="1380" L="40" H="400" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="492" Y="255" L="40" H="200" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="145" Y="672" L="80" H="40" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1510" Y="303" L="40" H="200" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1813" Y="2020" L="40" H="600" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="1570" Y="1183" L="40" H="240" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="2764" Y="2060" L="40" H="120" P="0,0,0.3,0,90,0,0,0" c="3"/><S T="19" X="980" Y="2880" L="40" H="240" P="0,0,0.3,0,0,0,0,0" c="3"/><S T="19" X="120" Y="2095" L="40" H="240" P="0,0,0.3,0,90,0,0,0" c="3"/><S T="19" X="2200" Y="653" L="40" H="380" P="0,0,0.3,0,90,0,0,0" c="3"/><S T="19" X="2810" Y="653" L="40" H="380" P="0,0,0.3,0,-90,0,0,0" c="3"/></S><D><P X="870" Y="1190" T="1" P="1,0"/><P X="1376" Y="1464" T="1" P="1,0"/><P X="855" Y="1490" T="5" P="1,0"/><P X="755" Y="1896" T="5" P="1,0"/><P X="175" Y="2022" T="5" P="1,0"/><P X="1215" Y="2470" T="5" P="1,0"/><P X="1859" Y="2160" T="2" P="1,0"/><P X="2461" Y="2626" T="2" P="1,0"/><P X="729" Y="2847" T="2" P="1,0"/><P X="111" Y="888" T="2" P="1,0"/><P X="751" Y="442" T="12" P="1,0"/><P X="2033" Y="264" T="12" P="1,0"/><P X="2165" Y="1129" T="1" P="1,0"/><P X="866" Y="750" T="11" P="1,0"/><P X="1529" Y="1105" T="11" P="1,0"/><P X="1853" Y="1791" T="11" P="1,0"/><P X="2583" Y="2234" T="11" P="1,0"/><P X="2047" Y="2575" T="3" P="1,0"/><P X="1073" Y="254" T="3" P="1,0"/><P X="202" Y="290" T="1" P="1,0"/><P X="1420" Y="200" T="1" P="1,0"/><P X="2515" Y="523" T="1" P="1,0"/><P X="216" Y="2565" T="5" P="1,0"/><P X="253" Y="1372" T="84" P="1,0"/><P X="467" Y="1129" T="84" P="1,0"/><P X="1794" Y="1223" T="84" P="1,0"/><P X="1919" Y="1526" T="84" P="1,0"/><P X="330" Y="1248" T="85" C="4b8e72" P="1,0"/><P X="1831" Y="1356" T="85" C="4b8e72" P="1,0"/><P X="1614" Y="2906" T="2" P="1,0"/><P X="2819" Y="1893" T="12" P="1,0"/><P X="2903" Y="2549" T="12" P="1,0"/><P X="1198" Y="2943" T="1" P="1,0"/><P X="191" Y="2928" T="1" P="1,0"/><P X="2845" Y="1431" T="1" P="1,0"/><P X="2210" Y="729" T="3" P="1,0"/><P X="106" Y="558" T="3" P="1,0"/><P X="182" Y="1686" T="3" P="1,0"/><P X="733" Y="2448" T="3" P="1,0"/><P X="2263" Y="2499" T="11" P="1,0"/></D><O/><L><JP M1="9" AXIS="1,0" MV="Infinity,-0.3"/><JP M1="11" AXIS="1,0" MV="Infinity,0.3"/><JP M1="7" AXIS="0,1" MV="Infinity,-0.3"/><JP M1="5" AXIS="0,1" MV="Infinity,0.3"/><JP M1="12" AXIS="1,0" MV="Infinity,-0.3"/><JP M1="15" AXIS="1,0" MV="Infinity,0.3"/><JP M1="13" AXIS="0,1" MV="Infinity,-0.3"/><JP M1="14" AXIS="0,1" MV="Infinity,0.3"/></L></Z></C>'}
local gameStarted, newPlayer, bonusTime, keys = false, false, 0, {0, 1, 2, 3, 32, 69, 80}
local textAreaIds = {
    aliveMice = 99,
    gift = {
        backGround = 100,
        onImg = 101
    }
}
local spawnPoints = {
    a = {x = 779, y = 301},
    b = {x = 500, y = 1000},
    c = {x = 1375, y = 650},--
    d = {x = 1637, y = 652},--
    e = {x = 2476, y = 506},
    f = {x = 2540, y = 1497},--
    g = {x = 2012, y = 2584},
    h = {x = 2880, y = 2365},
    i = {x = 300, y = 2800},
    j = {x = 1500, y = 1800}
}

for _, i in next, {'AutoShaman', 'MinimalistMode', 'WatchCommand', 'MortCommand', 'AutoNewGame', 'AutoScore',
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
        },
        event = {
            img,
            hasBarrier = false,
            barrierId = #players,
            barrierPutted = false
        },
        imgs = {aliveMice}
    }
    for i = 1, #keys do
        system.bindKeyboard(name, keys[i], true, true)
        system.bindKeyboard(name, keys[i], false, true)
    end
    tfm.exec.setPlayerScore(name, 0, false)
    local barrierPuttedId = 1
    for name in next, players do
        players[name].event.barrierId = barrierPuttedId
        barrierPuttedId = barrierPuttedId + 1
    end
end

tfm.exec.newGame(maps[1])

eventNewPlayer = function(name)
    if not gameStarted then
        tfm.exec.respawnPlayer(name)
        local barrierPuttedId = 1
        for name in next, players do
            players[name].event.barrierId = barrierPuttedId
            barrierPuttedId = barrierPuttedId + 1
        end
    else
        updatePlaying(name)
        newPlayer = true
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
        },
        event = {
            img,
            hasBarrier = false,
            barrierId = #players,
            barrierPutted = false
        },
        imgs = {aliveMice}
    }
    for i = 1, #keys do
        system.bindKeyboard(name, keys[i], true, true)
        system.bindKeyboard(name, keys[i], false, true)
    end
end

eventNewGame = function()
    if gameStarted then
        tfm.exec.disableAfkDeath(false)
        bonusTime = 0
        ui.removeTextArea(1)
        addBonus()
        for name in next, players do
            updatePlaying(name)
            if players[name].playing then
                local a = {"a","b","c","d","e","f","g","h","i","j"}
                local i = math.random(#a)
                tfm.exec.movePlayer(name, spawnPoints[a[i]].x, spawnPoints[a[i]].y, false, 0, 0, false)
            end
        end
    else
        tfm.exec.disableAfkDeath()
        bonus = {}
        for _, i in next, textAreaIds.gift do
            ui.removeTextArea(i)
        end
        ui.removeTextArea(textAreaIds.aliveMice)
        for name in next, players do
            if players[name].event.img then
                tfm.exec.removeImage(players[name].event.img)
            end
            if players[name].imgs.aliveMice then
                tfm.exec.removeImage(players[name].imgs.aliveMice)
            end
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
                },
                event = {
                    img,
                    hasBarrier = false,
                    barrierId = players[name].event.barrierId,
                    barrierPutted = false
                },
                imgs = {aliveMice}
            }
        end
        if newPlayer then
            for name in next, players do
                players[name].event.barrierId = barrierPuttedId
                barrierPuttedId = barrierPuttedId + 1
            end
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
        else
            for name in next, players do
                updatePlaying(name)
            end
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
                tfm.exec.movePlayer(name, 0, 0, false, 0, -players[name].speed - 5, false)
            else
                tfm.exec.movePlayer(name, 0, 0, false, -1, -1, false)
                tfm.exec.movePlayer(name, 0, 0, false, 1, 1, true)
            end

        elseif key == 3 then
            if down then
                tfm.exec.movePlayer(name, 0, 0, false, 0, players[name].speed + 5, false)
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
            if players[name].event.barrierPutted then
                tfm.exec.removePhysicObject(players[name].event.barrierId)
                players[name].event.barrierPutted = false
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
                                                      players[name].obj.offset, y, players[name][3] == 0 and -90 or 90)
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
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id, x + 15,
                                                players[name][3] == 1 and y - players[name].obj.offset or y +
                                                    players[name].obj.offset, players[name][3] == 1 and 0 or 180)
                    players[name].secondObj = tfm.exec.addShamanObject(players[name].obj.id, x - 15,
                                                  players[name][3] == 1 and y - players[name].obj.offset or y +
                                                      players[name].obj.offset, players[name][3] == 1 and 0 or 180)
                elseif players[name].obj.count == 3 then
                    players[name].lastObj = tfm.exec.addShamanObject(players[name].obj.id, x + 30,
                                                players[name][3] == 1 and y - players[name].obj.offset or y +
                                                    players[name].obj.offset, players[name][3] == 1 and 0 or 180)
                    players[name].secondObj = tfm.exec.addShamanObject(players[name].obj.id, x,
                                                  players[name][3] == 1 and y - players[name].obj.offset or y +
                                                      players[name].obj.offset, players[name][3] == 1 and 0 or 180)
                    players[name].thirdObj = tfm.exec.addShamanObject(players[name].obj.id, x - 30, players[name][3] ==
                                                 1 and y - players[name].obj.offset or y + players[name].obj.offset,
                                                 players[name][3] == 1 and 0 or 180)
                end
            end
            players[name].cooldown = 4
        end
    elseif key == 69 then
        if players[name].event.hasBarrier then
            if players[name][3] == 0 or players[name][3] == 2 then
                players[name].event.barrierPutted = tfm.exec.addPhysicObject(players[name].event.barrierId,  players[name][3] == 0 and x - players[name].obj.offset or x +
                players[name].obj.offset, y, {height = 75})
            else
                players[name].event.barrierPutted = tfm.exec.addPhysicObject(players[name].event.barrierId, x, players[name][3] == 1 and
                y - players[name].obj.offset or y + players[name].obj.offset, {width = 75})
            end
            players[name].event.hasBarrier = false
            players[name].event.barrierPutted = true
            tfm.exec.removeImage(players[name].event.img)
            ui.removeTextArea(textAreaIds.gift.backGround, name)
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
    local event = math.random(1, 6)
    if event == 1 then
        if players[name].speed < 90 then
            players[name].speed = players[name].speed + 10
        end
    elseif event == 2 then
        if players[name].speed > 10 then
            players[name].speed = players[name].speed - 10
        end
    elseif event == 3 then
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x, bonus[id].y - 30, 0)
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x - 30, bonus[id].y, -90)
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x + 30, bonus[id].y, 90)
        tfm.exec.addShamanObject(players[name].obj.id, bonus[id].x, bonus[id].y + 30, 180)
    elseif event == 4 then
        local count = math.random(1,3)
        players[name].obj.count = count
    elseif event == 5 then
        tfm.exec.explosion(bonus[id].x, bonus[id].y, 40, 20, true)
        tfm.exec.displayParticle(3, bonus[id].x, bonus[id].y, 0, 0, 0, 0, nil)
    elseif event == 6 then
        players[name].event.hasBarrier = true
    end
    addBonusImg(event, name)
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

addBonusImg = function(event, name)
    if players[name].event.img then
        tfm.exec.removeImage(players[name].event.img)
    end
    local borderColor = event == 1 and 0x00AABB or event == 2 and 0xFF0000 or event == 3 and 0xE08800 or event == 6 and
                            0xE08800 or event == 7 and 0xE08800 or 0x000000
    ui.addTextArea(textAreaIds.gift.backGround, "", name, 740, 340, 50, 50, 0xFFDDAA, borderColor, 1, true)
    if event == 1 or event == 2 then
        local color = event == 1 and '#00AABB' or '#FF0000'
        players[name].event.img = tfm.exec.addImage("16fe31c49aa.png", "&100", 765, 365, name, 1, 1,
                                      math.rad(event == 1 and 0 or 180), 1, 0.5, 0.5)
        ui.addTextArea(textAreaIds.gift.onImg, "\n\n<p align ='right'><font size='9'><font color ='" .. color .. "'>"..players[name].speed.."</font></font></p>",
            name, 745, 354, 50, 50, nil, nil, 0, true)
    elseif event == 3 then
        players[name].event.img = tfm.exec.addImage("16fe31c8ffd.png", "&100", 765, 365, name, 1, 1, math.rad(0), 1,
                                      0.5, 0.5)
    elseif event == 4 then
        players[name].event.img = tfm.exec.addImage("1752b1c10bc.png", "&100", 765, 363, name, 1.05, 1.05, math.rad(0),
                                      1, 0.5, 0.5)
        ui.addTextArea(textAreaIds.gift.onImg,
            "\n\n<p align ='right'><font color ='#ff0000'>x" .. players[name].obj.count .. "</font></p>", name, 740,
            348, 50, 50, nil, nil, 0, true)
    elseif event == 5 then
        players[name].event.img = tfm.exec.addImage("16fe31c611b.png", "&100", 765, 365, name, 1.1, 1.1, math.rad(0), 1,
                                      0.5, 0.5)
    elseif event == 6 then
        players[name].event.img = tfm.exec.addImage("16fe31c0355.png", "&100", 765, 365, name, 1.1, 1.1, math.rad(0), 1,
                                      0.5, 0.5)
    end
end

updatePlaying = function(name)
    local color = getPlaying() > 5 and '#008000' or getPlaying() > 3 and '#00AABB' or '#FF0000'
    if players[name].imgs.aliveMice then
        tfm.exec.removeImage(players[name].imgs.aliveMice)
    end
    ui.addTextArea(textAreaIds.aliveMice, "<p align='right'><font size='25'><font color='" .. color .. "'>" ..
        getPlaying() .. "</font></font></p>", name, 20, 350, 70, 40, 0xFFDDAA, 0x000000, 1, true)
    players[name].imgs.aliveMice = tfm.exec.addImage("16e4ccf289d.png", "&100", 10, 342, name, 0.25, 0.25)
end

for name in next, players do
    -- addBonusImg(7, name)
end
