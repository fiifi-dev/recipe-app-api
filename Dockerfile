# Base image
FROM python:3.7-alpine

# Add a labels to my projects
LABEL Author="Dickson Afful"

# Prevents buffering in containers
ENV PYTHONUNBUFFERED=1

# Installs packages as defined in the requirements.txt
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Creates working directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Add User to run container
RUN adduser -D user
USER user