#FROM python:3.8.16-slim-bullseye
FROM ubuntu:22.04
COPY requirements.txt requirements.txt

RUN apt update -y && apt upgrade -y && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa -y && apt update -y &&\
    apt install -y python3.10 && apt install -y git && \
    update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1 && \
    apt install -y python3-pip && pip3 install wheel && \
    pip3 install -r requirements.txt && \
    python3 -m nltk.downloader punkt && \
    python3 -m spacy download it_core_news_sm

CMD [ "bash" ]
