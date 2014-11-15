pi-noccio-setup
===============

setup a raspberrypi-noccio bridge

> to set up a pi without a monitor, these [headless instructions](http://www.raspberrypi.org/forums/viewtopic.php?f=91&t=74176) are super helpful

to setup a brand new pi
-----------------------

installs node and pinoccio on the pi

```sh
wget http://registry.npmjs.org/pi-noccio-setup/-/pi-noccio-setup-1.0.2.tgz \
  && tar -xvf pi-noccio-setup-1.0.2.tgz \
  && ./pi-noccio-setup-1.0.2/install-pinoccio.sh
```

if you have node already
-------------------------

```sh
npm install -g pinoccio pi-noccio-setup
```

and if you want to enable bridge mode as a service on startup
```sh
pi-noccio-bridge-setup
```
