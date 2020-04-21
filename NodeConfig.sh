#!/bin/bash
echo ""
#Variable for Script Paths
full_path=$(realpath $0)
#echo $full_path
dir_path=$(dirname $full_path)
#echo $dir_path

#CN var specified when creating container, representing container number
#CN="1"

#moving SN Key file and p2pstatebin to its respective datastore location
#cp ${dir_path}/SN_Keys/xtnc${CN}/* ${dir_path}/SN_Data
cp /XtendCash/SN_Keys/xtnc${CN}/* /XtendCash/SN_Data
cp /XtendCash/p2pstate.bin /XtendCash/SN_Data

#Port determining algorithm
SP=33100
SKIP1=33123
SKIP2=33124
SKIP3=33125
trigger=0
Threshold=10

if [ "$CN" -ge "$Threshold" ]; then
  trigger=1
fi

#Determining P2P Port
if [ "$trigger" == "0" ];then
  P2P=$(($(($((3*CN))-2))+SP))
else
  P2P=$(($(($((3*CN))+1))+SP))
fi
if [ "$P2P" == "$SKIP1" ] || [ "$P2P" == "$SKIP2" ] || [ "$P2P" == "$SKIP3" ];then
  P2P=$((P2P+3))
  trigger=1
fi

#Determining ZMQ port
if [ "$trigger" == "0" ];then
  ZMQ=$(($(($((3*CN))-1))+SP))
else
  ZMQ=$(($(($((3*CN))+2))+SP))
fi
if [ "$ZMQ" == "$SKIP1" ] || [ "$ZMQ" == "$SKIP2" ] || [ "$ZMQ" == "$SKIP3" ];then
  ZMQ=$((ZMQ+3))
  trigger=1
fi

#Determining RPC port
if [ "$trigger" == "0" ];then
  RPC=$(($((3*CN))+SP))
else
  RPC=$(($(($((3*CN))+3))+SP))
fi
if [ "$RPC" == "$SKIP1" ] || [ "$RPC" == "$SKIP2" ] || [ "$RPC" == "$SKIP3" ];then
  RPC=$((RPC+3))
  trigger=1
fi


#Delete node acces files, so that they can be recreated again
cd /XtendCash

if [ -e 1_status.sh ]; then
  rm -rfv 1_status.sh
fi
#
if [ -e 2_sync_info.sh ]; then
  rm -rfv 2_sync_info.sh
fi
#
if [ -e 3_reg.sh ]; then
  rm -rfv 3_reg.sh
fi
#
if [ -e 4_snkey.sh ]; then
  rm -rfv 4_snkey.sh
fi
#
if [ -e 5_snstatus.sh ]; then
  rm -rfv 5_snstatus.sh
fi

#Making shortcut files

#0)Making verifying shortcut; it display the ports used to create the node
cat >> /XtendCash/0_ports.sh <<EOL
#!/bin/bash
echo "P2P port used was "${P2P}
echo "ZMQ port used was "${ZMQ}
echo "RPC port used was "${RPC}
EOL

#1)Making node status shortcut; Used to display node status
cat >> /XtendCash/1_status.sh <<EOL
#!/bin/bash
/XtendCash/xtendcashd status --rpc-bind-port ${RPC}
EOL

#2)Making the sync info shortcut
cat >> /XtendCash/2_sync_info.sh <<EOL
#!/bin/bash
/XtendCash/xtendcashd sync_info --rpc-bind-port ${RPC}
EOL

#3)Making the SN registering shortcut. Used to register a new SN
cat >> /XtendCash/3_reg.sh <<EOL
#!/bin/bash
/XtendCash/xtendcashd prepare_registration --rpc-bind-port ${RPC}
EOL

#4)Making the SN key shortcut; Used to display the SN key
cat >> /XtendCash/4_snkey.sh <<EOL
#!/bin/bash
/XtendCash/xtendcashd print_sn_key --rpc-bind-port ${RPC}
EOL

#5)Making the SN Status shortcut; Used to display the SN Status
cat >> /XtendCash/5_snstatus.sh <<EOL
#!/bin/bash
/XtendCash/xtendcashd print_sn_status --rpc-bind-port ${RPC}
EOL

chmod a+x 0_ports.sh
chmod a+x 1_status.sh
chmod a+x 2_sync_info.sh
chmod a+x 3_reg.sh
chmod a+x 4_snkey.sh
chmod a+x 5_snstatus.sh

#Rulare Demon XTNC
/XtendCash/xtendcashd --data-dir /XtendCash/SN_Data --p2p-bind-port=${P2P} --zmq-rpc-bind-port=${ZMQ} --rpc-bind-port=${RPC} --confirm-external-bind --service-node --non-interactive  --add-peer 88.218.224.23  --add-peer 51.68.191.40
#--add-peer 88.218.224.23 32Core Demon
#--add-peer 51.68.191.40  Huser Mining Pool
