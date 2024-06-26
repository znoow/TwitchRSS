FROM python:3.11-slim-bookworm
WORKDIR /TwitchRSS
RUN apt-get update && apt-get install -y git libxslt-dev && rm -rf /var/lib/apt/lists/*
COPY ./TwitchRSS/* ./
RUN pip3 install -r requirements.txt
ENTRYPOINT ["/bin/bash", "entrypoint.sh"]
