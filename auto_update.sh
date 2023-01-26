#!/bin/bash
# hash out comment for init 
<< 'Comment'
cd /etc/systemd/system
touch autoupdate.service

echo "[Unit]
Description=Example systemd service.

[Service]
Type=simple
ExecStart=/bin/bash /home/elberto/Dokumente/GitHub/bash-scripts

[Install]
WantedBy=multi-user.target" >> autoupdate.service

# mit sudo visudo die datei /etc/sudoers
Comment

sudo  apt-get update && sudo apt-get upgrade
