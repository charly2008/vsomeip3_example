# vsomeip_example

## Test Environment

| C/S    | Host           | OS           | CPU-Arch | Eth-Port-Name | IP            |
| ------ | -------------- | ------------ | -------- | ------------- | ------------- |
| Server | Raspberry Pi4+ | ubuntu 20.04 | arm64    | eth0          | 192.168.2.100 |
| Client | Dell-Pc        | ubuntu 22.04 | amd64    | enp0s25       | 192.168.2.40  |



## compile vsomeip
- sudo apt-get install -y libboost-system-dev libboost-thread-dev libboost-log-dev
- mkdir build
- mkdir install
- cd build
- cmake -DCMAKE_INSTALL_PREFIX:PATH="/usr/" -DENABLE_SIGNAL_HANDLING=1 ..
- make -j4
- sudo make install
