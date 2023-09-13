#!/bin/bash

nohup bpx-geth --syncmode full --http --authrpc.addr localhost --authrpc.port 8551 --authrpc.vhosts localhost >~/logs/bpx-exec.log 2>&1 &
