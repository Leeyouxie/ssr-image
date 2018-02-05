# base image
FROM dsdgroup/tensorflow:cpu

# maintainer information
MAINTAINER liwubo@stu.scu.edu.cn

# install something
ADD requirements.txt requirements.txt
RUN apt-get update -y && \
	apt-get install -y python3-pip && \
	pip3 install -U -r requirements.txt
	pip3 install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.2.0-cp35-cp35m-linux_x86_64.whl
