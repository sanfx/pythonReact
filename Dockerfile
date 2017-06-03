FROM python:3.4-slim

MAINTAINER Sanjeev Kumar <asksan@live.ca>

RUN apt-get update && \
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

