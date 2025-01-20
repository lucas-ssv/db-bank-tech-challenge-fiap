FROM node:latest

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

COPY db.json /data/db.json

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
