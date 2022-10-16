#!/usr/bin/env bash

sudo route add -nv 224.244.224.245 dev enp0s25

export VSOMEIP_CONFIGURATION=../config/helloworld-client.json
export VSOMEIP_APPLICATION_NAME=hello_world_client
chmod +x ../install/hello_world_client
../install/hello_world_client