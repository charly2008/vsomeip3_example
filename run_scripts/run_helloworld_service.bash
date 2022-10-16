#!/usr/bin/env bash

export VSOMEIP_CONFIGURATION=../config/helloworld-service.json
export VSOMEIP_APPLICATION_NAME=hello_world_service
chmod +x ./install/hello_world_service
./install/hello_world_service