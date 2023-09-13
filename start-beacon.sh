#!/bin/bash

cd ~/bpx-beacon-client
. ./activate
echo bpx activated
bpx start node -r
bpx start farmer -r
bpx start harvester -r
deactivate
