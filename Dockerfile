# base image
FROM minjoon/tf4

# maintainer information
MAINTAINER liwubo@stu.scu.edu.cn

# install something
ADD requirements.txt requirements.txt
RUN apt-get update -y && \
	apt-get install -y python3-pip && \
	pip3 install -U pip && \
	sudo pip3 install -U -r requirements.txt
