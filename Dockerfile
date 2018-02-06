# base image
FROM dsdgroup/tensorflow:cpu

# maintainer information
MAINTAINER liwubo@stu.scu.edu.cn

# install something
ADD requirements.txt requirements.txt
RUN apt-get update -y && \
	apt-get install -y python3-pip && \
	sudo pip3 install -U -r requirements.txt
