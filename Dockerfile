FROM resin/rpi-raspbian:wheezy


MAINTAINER Dieter Reuter <dieter@hypriot.com>

RUN apt-get update && \
	apt-get -y install python-pip && \
	apt-get -y install python-dev && \
	apt-get -y install build-essential && \
    	apt-get -y install gcc mono-mcs && \
	apt-get -y install vim && \
	apt-get -y install nano && \
	    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/js

VOLUME ["/app/"]

WORKDIR /app/js

COPY requirements.txt /opt/requirements.txt

RUN pip install -r /opt/requirements.txt

EXPOSE 8080

CMD ["python", "/app/app.py"]

