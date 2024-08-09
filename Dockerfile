# syntax=docker/dockerfile:1

# Default value for base image 
ARG BASE_IMAGE=python:3.9-slim
FROM ${BASE_IMAGE}

# Default value for entry commands
ARG COMMAND="python3 src/main.py"
# ARG JFROG_SOURCE_URL="jfrog.example.com"

WORKDIR /app
COPY src /app/src
COPY tests /app/tests
COPY requirements.txt .
# RUN pip install -r requirements.txt -i ${JFROG_SOURCE_URL}

WORKDIR /app
CMD ["sh","-c", "$COMMAND"]