#!/bin/bash

export VSOMEIP_CONFIGURATION=../config/vsomeip3_ubuntu2204.json
export VSOMEIP_APPLICATION_NAME=client-sample
chmod +x ../install/request-sample
../install/request-sample