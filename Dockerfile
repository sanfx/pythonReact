FROM python:2.7-slim

MAINTAINER Sanjeev Kumar <asksan@live.ca>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
	    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/js

WORKDIR /app/js

CMD [curl", "-o", "https://cdnjs.cloudflare.com/ajax/libs/react/15.3.2/react-dom.js"]

VOLUME ["/app/"]

WORKDIR /app

COPY /Users/sanjeevkumar/.vim /app/

COPY requirements.txt /opt/requirements.txt

RUN pip install -r /opt/requirements.txt

EXPOSE 8080

CMD ["python", "/app/app.py"]

