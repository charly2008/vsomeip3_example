# vsomeip_example

## Test Environment

| C/S    | Host           | OS           | CPU-Arch | Eth-Port-Name | IP            |
| ------ | -------------- | ------------ | -------- | ------------- | ------------- |
| Server | virtualbox     | ubuntu 20.04 | arm64    | enp0s10       | 192.168.56.102|
| Client | virtualbox     | ubuntu 20.04 | amd64    | enp0s10       | 192.168.56.102|



## compile vsomeip
- sudo apt-get install -y libboost-system-dev libboost-thread-dev libboost-log-dev
- mkdir build
- mkdir install
- cd build
- cmake -DCMAKE_INSTALL_PREFIX:PATH="/usr/" -DENABLE_SIGNAL_HANDLING=1 ..
- make -j4
- sudo make install
