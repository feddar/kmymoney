#!/bin/sh

USER=dario
USERID=1000
userdel -f -r ubuntu || ok=1
echo "creating new $USER with UID $USERID"
useradd -m $USER -u $USERID 
chown -R $USER /home/$USER
cd /home/$USER 
su $USER -c kmymoney
