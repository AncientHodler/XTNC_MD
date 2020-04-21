#!/bin/bash
echo""

echo "Type the folder path where the directories have been created"
echo "Use this a format similar to this example:"
echo "/home/user/SSD/BlockchainData/XTNC_MD_Data"
read path
echo ""

echo "What is the first container number you want to create ?"
echo "Standard answer is 1, type 1 if you want to start with 1"
read START
echo ""

echo "What is the last container number you want to create?"
echo "Number entered now must be bigger than number entered previously"
read END
echo ""

echo "Container(z) will be created on "$path
echo "from container number "$START" to container number "$END
echo "If you dont agree, stop the script now with Control + C"
echo "If you agree,"
read -p "Press Enter to continue"
echo ""

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

#End Port Determining algorithm


cd $path
single=9
multi=100

if [ "$START"  -le "$single" ]; then
for ((i=START;i<=single;i++))
do
sudo docker run -d CN=$i -p $P2P:$P2P - p $ZMQ:$ZMQ -p $RPC:$RPC -v $path/xtnc0$i:/XtendCash/SN_Data --name xtnc0$i xtnc_md
done
for ((i=10;i<=END;i++))
do
sudo docker run -d CN=$i -p $P2P:$P2P - p $ZMQ:$ZMQ -p $RPC:$RPC -v $path/xtnc$i:/XtendCash/SN_Data --name xtnc$i xtnc_md
done

else
for ((i=START;i<=END;i++))
do
sudo docker run -d CN=$i -p $P2P:$P2P - p $ZMQ:$ZMQ -p $RPC:$RPC -v $path/xtnc$i:/XtendCash/SN_Data --name xtnc$i xtnc_md
done
fi

