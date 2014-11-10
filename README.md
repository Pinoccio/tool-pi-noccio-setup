pi-noccio-setup
=============================

setup a raspberrypi-noccio bridge

to use without node 
-------------------

installs node and pinoccio on the pi

```sh
wget http://registry.npmjs.org/pi-noccio-setup/-/pi-noccio-setup-1.0.1.tgz && tar -xvf pi-noccio-setup-1.0.1.tgz && ./install-pinoccio.sh
```

if you have node already

```sh
npm install -g pinoccio pi-noccio-setup
```

and if you want to enable bridge mode as a service on startup
```sh
pi-noccio-bridge-setup
```
