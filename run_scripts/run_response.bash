#!/usr/bin/env bash

sudo route add -nv 224.244.224.245 dev eth0

export VSOMEIP_CONFIGURATION=../config/vsomeip-tcp-service.json
export VSOMEIP_APPLICATION_NAME=service-sample
chmod +x ../install/response-sample
../install/response-sample
