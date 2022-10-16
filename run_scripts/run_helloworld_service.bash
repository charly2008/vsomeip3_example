#!/usr/bin/env bash

sudo route add -nv 224.244.224.245 dev eth0

export VSOMEIP_CONFIGURATION=../config/helloworld-service.json
export VSOMEIP_APPLICATION_NAME=hello_world_service
chmod +x ../install/hello_world_service
../install/hello_world_service