#!/bin/bash 

source ~/config/bpx.sh

read -p "Sure? " c
case $c in
 y)
   cd ~/bpx-beacon-client
   . ./activate
   bpx stop all -d
   deactivate
   rm -r ~/bpx-beacon-client
   rm ~/.bpx
   git clone https://github.com/bpx-network/bpx-beacon-client
   cd ~/bpx-beacon-client
   install.sh
   . ./activate
   echo Installed $(bpx version)
   ln -s $block_dir/.bpx ~/.bpx
   deactivate
 ;;
esac
