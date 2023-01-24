#!bin/bash/
nmcli dev wifi > wifi.txt
cat wifi.txt
echo ""
echo "Geben Sie an mit welchem Wifi-Netzwerk sie sich verbinden möchten. (SSID) "
read -p  " Eingabe bitte ohne leerzeichen." wificonnect
grep -c "$wificonnect" wifi.txt = $available
if [ "$available" == "$wificonnect" ];
then
    nmcli --ask dev wifi connect $wificonnect
fi
    echo ""
    echo "Die Verbindung $wificonnect konnte nicht gefunden werden"
    read -p "Erneut vesuchen? (ja / nein)" retry
    if [ $retry  == "ja" ];
    then 
        echo "Geben Sie an mit welchem Wifi-Netzwerk sie sich verbinden möchten. (SSID) "
        read -p   " Eingabe bitte ohne leerzeichen." wificonnect    
        nmcli --ask dev wifi connect $wificonnect
    fi

rm wifi.txt




