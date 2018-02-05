# base image
FROM dsdgroup/tensorflow:gpu-cuda-8.0

# maintainer information
MAINTAINER liwubo@stu.scu.edu.cn

# install something
RUN apt-get update -y && \
	apt-get install -y python3-pip && \
	pip3 install -U -r requirements.txt
