#!/bin/bash
for i in `seq 1 10`;
do
	date -Ins
	echo "start vm"
        sudo virsh start vm1
	ret=1
	while [ $ret != 0 ]
	do
		ping -c 1 $1 2>/dev/null
		ret=$?
	done
	date -Ins
	sudo virsh shutdown vm1
	echo "shutdown vm"
	sleep 15
#	exit 0
#	sudo virsh start vm2
#	date -Ins
#	sudo virsh shutdown vm1
#	sudo virsh shutdown vm2
done

