#!/bin/bash

sudo touch autoupdaten.sh
sudo echo "sudo  apt-get update && sudo apt-get upgrade" >> autoupdate.sh

sudo mv autoupdate.sh /etc/profile.d
echo "s"



# mit sudo visudo die datei /etc/sudoers und   
# %admin ALL=(root) NOPASSWD: /---pfad zu---/autoupdate.sh -f
# hinzufügen
# autoupdate bearbeitungsrechte für benutzer entziehen und auf sudo stellen da sonst eine sicherheitslücke entsteht.
#Comment


