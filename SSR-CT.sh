#!/bin/bash
echo "How many container do you want to manipulate consecutively ?"
echo "enter the desired number:"
read NO
echo ""
echo "What do you want to do ?"
echo "start, stop or remove containers ?"
read ACTION
echo ""

single=9
multi=100


if [ "$ACTION" == "start" ]; then
if [ "$NO"  -le "$single" ]; then
for ((i=1;i<=NO;i++))
do
sudo docker container start xtnc0$i
done
else
for ((i=1;i<=single;i++))
do
sudo docker container start xtnc0$i
done
for ((i=10;i<=NO;i++))
do
sudo docker container start xtnc$i
done
fi
fi

if [ "$ACTION" == "stop" ]; then
if [ "$NO"  -le "$single" ]; then
for ((i=1;i<=NO;i++))
do
sudo docker container stop xtnc0$i
done
else
for ((i=1;i<=single;i++))
do
sudo docker container stop xtnc0$i
done
for ((i=10;i<=NO;i++))
do
sudo docker container stop xtnc$i
done
fi
fi

if [ "$ACTION" == "remove" ]; then
if [ "$NO"  -le "$single" ]; then
for ((i=1;i<=NO;i++))
do
sudo docker container rm xtnc0$i
done
else
for ((i=1;i<=single;i++))
do
sudo docker container rm xtnc0$i
done
for ((i=10;i<=NO;i++))
do
sudo docker container rm xtnc$i
done
fi
fi

