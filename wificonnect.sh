#!bin/bash/
nmcli wifi on 
nmcli dev wifi > wifi.txt
cat wifi.txt
echo "Geben Sie an mit welchem Wifi-Netzwerk sie sich verbinden möchten. (SSID) "
read -p   " Eingabe bitte ohne leerzeichen." wificonnect
if [ grep -c "$wificonnect" wifi.txt -ge 1 ];
then
    echo"gfeht"
fi
nmcli --ask dev wifi connect $wificonnect

rm wifi.txt




