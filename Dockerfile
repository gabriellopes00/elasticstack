FROM node:14

RUN curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.13.0-amd64.deb && \
    dpkg -i filebeat-7.13.0-amd64.deb

COPY filebeat.yml /etc/filebeat/filebeat.yml
COPY . .

RUN npm install
RUN chmod +x /entrypoint.sh

EXPOSE 7456

ENTRYPOINT [ "/entrypoint.sh" ]
