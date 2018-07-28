FROM node:6-alpine

RUN apk add --update libc6-compat
# Create app directory
WORKDIR /usr/src/app
COPY . .

RUN cd server && npm install && cd ..
RUN npm install

EXPOSE 3000
EXPOSE 3001

CMD npm start