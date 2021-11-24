FROM node:12.18.1
ENV NODE_ENV=production
LABEL maintainer="SE <bernard@hotmail.be>"

RUN mkdir -p /usr/src/app

# install app
WORKDIR /usr/src/app
COPY ./package*.json ./
RUN npm install

COPY . .

ARG nodeName
ARG maasAccountPassword

ENV nodeName=${nodeName}
ENV maasAccountPassword=${maasAccountPassword}

CMD [ "node", "app.js" ]
