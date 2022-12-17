#!/bin/bash
#sleep 69
echo "schau erst ob du screen instalierst hast wenn nd mache es"
printf "Welche version willst du? Wähle mit 1 bis 4 aus\n 1. 1.19.2\n 2. 1.18.2 \n 3. 1.16.5\n 4. 1.8.9\n" 
read auswahl

if [ "$auswahl" -eq 1 ]; then
    wget https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar

    echo "Wähle aus ob du den RAM fuer den Server in GB oder MB angeben willst also schreibe entweder GB oder MB"
    read gbodamb
    echo "Schreibe wie viel Ram dein Server haben soll"
    read ram
    echo "Schreibe einen namen fuer den Prozess den dein Server haben soll"
    read name

    echo screen -S $name -d -m java -Xmx$ram$gbodamb -Xms$ram$gbodamb -jar server.jar nogui > start.sh
    echo screen -r $name > stop.sh
   
    chmod +x start.sh
    chmod +x stop.sh

    echo "jetzt musst du nur noch mit ./start.sh den server starten und dann in eula.txt false zu true ändern"
fi

if [ "$auswahl" -eq 2 ]; then
    wget https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar

    echo "Wähle aus ob du den RAM fuer den Server in GB oder MB angeben willst also schreibe entweder GB oder MB"
    read gbodamb
    echo "Schreibe wie viel Ram dein Server haben soll"
    read ram
    echo "Schreibe einen namen fuer den Prozess den dein Server haben soll"
    read name

    echo screen -S $name -d -m java -Xmx$ram$gbodamb -Xms$ram$gbodamb -jar server.jar nogui > start.sh
    echo screen -r $name > stop.sh
   
    chmod +x start.sh
    chmod +x stop.sh

    echo "jetzt musst du nur noch mit ./start.sh den server starten und dann in eula.txt false zu true ändern"
fi

if [ "$auswahl" -eq 3 ]; then
    wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

    echo "Wähle aus ob du den RAM fuer den Server in GB oder MB angeben willst also schreibe entweder GB oder MB"
    read gbodamb
    echo "Schreibe wie viel Ram dein Server haben soll"
    read ram
    echo "Schreibe einen namen fuer den Prozess den dein Server haben soll"
    read name

    echo screen -S $name -d -m java -Xmx$ram$gbodamb -Xms$ram$gbodamb -jar server.jar nogui > start.sh
    echo screen -r $name > stop.sh
   
    chmod +x start.sh
    chmod +x stop.sh

    echo "jetzt musst du nur noch mit ./start.sh den server starten und dann in eula.txt false zu true ändern"
fi

if [ "$auswahl" -eq 4 ]; then
    wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar

    echo "Wähle aus ob du den RAM fuer den Server in GB oder MB angeben willst also schreibe entweder GB oder MB"
    read gbodamb
    echo "Schreibe wie viel Ram dein Server haben soll"
    read ram
    echo "Schreibe einen namen fuer den Prozess den dein Server haben soll"
    read name

    echo screen -S $name -d -m java -Xmx$ram$gbodamb -Xms$ram$gbodamb -jar server.jar nogui > start.sh
    echo screen -r $name > stop.sh
   
    chmod +x start.sh
    chmod +x stop.sh

    echo "jetzt musst du nur noch mit ./start.sh den server starten und dann in eula.txt false zu true ändern"
fi
