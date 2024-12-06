FROM node:22.12.0

RUN npm install -g npm@10.9.2

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
