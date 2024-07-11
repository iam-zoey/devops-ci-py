# syntax=docker/dockerfile:1
ARG BASE_IMAGE_VERSION=3.9-slim

FROM python:${BASE_IMAGE_VERSION}
ARG FILE_TO_RUN="main.py"
ENV FILE=${FILE_TO_RUN}
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
CMD ["sh", "-c", "python $FILE"]
