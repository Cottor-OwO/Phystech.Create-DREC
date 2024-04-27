#!/bin/sh

cd /tmp
rm -rf Phystech.Create-DREC

git clone git@github.com:cottor-owo/Phystech.Create-DREC
cd Phystech.Create-DREC

OLDIP=`cat server.txt`
NEWIP=`ipget`

if [[ $OLDIP != $NEWIP ]]
then
	echo $NEWIP > server.txt
	git commit -m "Changed server IP to $NEWIP" -a
	git push
fi

rm -rf Phystech.Create-DREC
