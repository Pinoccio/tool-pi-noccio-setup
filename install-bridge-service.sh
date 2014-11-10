# to setup pinoccio bridge on boot
# this starts bridge and keeps it running if it crashes.
# if there are no scouts connected it will retry once per second.
# log data is written to /var/log/pinoccio-bridge.log
# for verbose logging change `pinoccio bridge` to `pinoccio bridge -v`


cat  << EOF > pinoccio-bridge.sh
while [ 1 ]
do
date
pinoccio bridge
sleep 1
done;

EOF

chmod +x pinoccio-bridge.sh

if [ -f "/etc/rc.local.orig" ]; then
  echo "backup already made."
else
  sudo cp /etc/rc.local /etc/rc.local.orig
fi

# remove any old pinoccio bridge lines
cat /etc/rc.local | grep -v pinoccio-bridge > rc.local.tmp

# delete the last line in the file it's "exit 0"
cat rc.local.tmp | sed '$ d' >> rc.local.tmp2
mv rc.local.tmp2 rc.local.tmp

# add the code to start bridge on boot
echo 'su pi -c"/home/pi/pinoccio-bridge.sh < /dev/null &>> /tmp/pinoccio-bridge.log &"' >> rc.local.tmp

# add the exit 0 back to the file
echo "exit 0" >> rc.local.tmp

# make a backup
sudo cp /etc/rc.local /etc/rc.local.bak
# put new changes in place
sudo mv rc.local.tmp /etc/rc.local
sudo chmod +x /etc/rc.local

echo "to see your changes you have to reboot. you can run 'sudo reboot' to reboot"

