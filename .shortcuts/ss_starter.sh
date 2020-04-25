SSHD=`ps aux | grep sshd | wc -l`
if [ $(($SSHD)) -gt 1 ] ; then
    MSG='sshd is already running. '
else
    sshd
    MSG='sshd started. '
fi
IP=`ip --oneline --family inet address show dev wlan0`
IP=`echo $IP | cut -d' ' -f4 | cut -d'/' -f1`
termux-notification -t "$MSG$IP"
termux-wake-lock

