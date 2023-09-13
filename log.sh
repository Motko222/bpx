#!/bin/bash

echo "  1  beacon"
echo "  2  execution"
echo "------------------------"
read -p "Action? " action

case $action in
1) tail -f  -n 50 ~/.bpx/beacon/log/debug.log ;;
2) tail -f  -n 50 ~/logs/bpx-exec.log ;;
esac
