# Pull base image
FROM resin/rpi-raspbian:wheezy

MAINTAINER Sanjeev Kumar  <sanjeev@outlook.in>

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

ENV PYTHON_VERSION 2.7.13

# Install dependencies
RUN apt-get update && \
	apt-get -y install python2.7-minimal && \
	apt-get -y install python-pip && \
	apt-get -y install python-dev && \
    	apt-get -y install gcc && \
	    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/

VOLUME ["/app/"]

# Define working directory
WORKDIR /app/

COPY requirements.txt /opt/requirements.txt

# Install dependencies
RUN pip install -r /opt/requirements.txt

EXPOSE 8080

# Define default command
CMD ["python", "/app/app.py"]

