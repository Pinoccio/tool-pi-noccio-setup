
hasnode=`node -v`
if [ "$hasnode" == "" ]; then
  wget http://node-arm.herokuapp.com/node_latest_armhf.deb 
  sudo dpkg -i node_latest_armhf.deb
else 
  echo "node already installed. version $hasnode"
  echo "run these commands if you want to upgrade"
  echo "  wget http://node-arm.herokuapp.com/node_latest_armhf.deb "
  echo "  sudo dpkg -i node_latest_armhf.deb"
fi

sudo npm  install -g pinoccio
e=$?
if [ $e ]; then
  echo "error installing node or pinoccio"
  exit $e
fi 
"pinoccio installed! plug in a scout and try"
"   pinoccio serial"
 
echo " for some reason the interactive prompt for password isn't working so to login"
echo "    pinoccio login --email youremail --password yourpassword"
 
echo "to make sure you got logged in try "
echo "    pinoccio who"
 
echo "and use the pi as a bridge!!"
echo "    pinoccio bridge"
