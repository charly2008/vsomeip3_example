#!/usr/bin/env bash

sudo route add -nv 224.244.224.245 dev enp0s25

export VSOMEIP_CONFIGURATION=../config/vsomeip-tcp-client.json
export VSOMEIP_APPLICATION_NAME=client-sample
chmod +x ../install/request-sample
../install/request-sample