#!/usr/bin/env bash

export VSOMEIP_CONFIGURATION=../config/helloworld-client.json
export VSOMEIP_APPLICATION_NAME=hello_world_client
chmod +x ./install/hello_world_client
./install/hello_world_client