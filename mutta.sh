#!/bin/bash
#sleep 69
echo "schau erst ob du screen instalierst hast wenn nd mache es"
printf "Welche version willst du? Wähle mit 1 bis 4 aus\n 1. 1.19.3\n 2. 1.18.2 \n 3. 1.16.5\n 4. 1.8.9\n" 
read version
echo "Wähle aus ob du den RAM fuer den Server in GB oder MB angeben willst also schreibe entweder GB oder MB"
read ram_unit
echo "Schreibe wie viel Ram dein Server haben soll"
read ram
echo "Willst du screen bentuzen um den server minimiert zu benutzen oder nicht? schreibe 1 für ja und 2 für nein"
read screen_or_not
echo "Schreibe einen namen fuer den Prozess den dein Server haben soll"
read process_name



auswahl () {

    if [ "$4" -eq 1 ]; then
        use_screen="screen -S $5 -d -m"
        use_screen_stop="screen -r $5"

    else
        use_screen=""
        use_screen_stop=""
    fi

    if [ "$1" -eq 1 ]; then
        wget https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar
    fi
    if [ "$1" -eq 2 ]; then
        wget https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar
    fi
    if [ "$1" -eq 3 ]; then
        wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

    fi
    if [ "$1" -eq 4 ]; then
        wget https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar
    fi

    echo $use_screen java -Xmx$3$2 -Xms$3$2 -jar server.jar nogui > start.sh
    echo $use_screen_stop > stop.sh
   
    chmod +x start.sh
    chmod +x stop.sh

    #gb or mb = 2 
    #ram = 3
    #scrren oder nicht 4
    #sessenname = 5
    echo "jetzt musst du nur noch mit ./start.sh den server starten und dann in eula.txt false zu true ändern"

}

auswahl "$version" "$ram_unit" "$ram" "$screen_or_not" "$process_name"
