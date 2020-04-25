IP=`ip --oneline --family inet address show dev wlan0`
IP=`echo $IP | cut -d' ' -f4 | cut -d'/' -f1`
termux-notification -t $IP

