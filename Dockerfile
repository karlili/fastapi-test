FROM python:3.9.18-slim-bullseye

RUN apt update && apt upgrade -y

WORKDIR /app

# RUN python -m venv /app/language_x_change/venv
# RUN source language_x_change/venv/bin/activate

COPY *.py .


#Install the python dependencies
RUN pip install fastapi "uvicorn[standard]"



CMD uvicorn main:app --reload