# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y g++ gcc gettext gdal-bin nginx
RUN export LC_ALL=C
RUN mkdir -p /usr/share/nginx/html/
RUN rm -rf /usr/share/nginx/html/*
RUN rm -rf /etc/nginx/sites-enabled/*

# Set work directory
WORKDIR /code
# Install dependencies
COPY pay/requirements.pip /code/requirements.pip
RUN pip install -r requirements.pip
COPY nginx.conf /etc/nginx/conf.d/
COPY *.sh /code/

# Copy project
COPY pay /code/pay
