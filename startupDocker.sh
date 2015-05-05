#!/bin/bash
#!/bin/bash
date -Ins
for i in `seq 1 10`;
do
	sudo docker run  centos /bin/bash
done
date -Ins 
