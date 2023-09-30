FROM node:18-alpine

WORKDIR /usr/src/app

RUN npm install -g npm@10.1.0

RUN addgroup -S refaldygroup
RUN adduser -S -D -h /usr/src/app refaldy refaldygroup
RUN chown -R refaldy:refaldygroup /usr/src/app

USER refaldy

COPY package*.json ./
RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev
# Bundle app source
COPY . .
EXPOSE 8080
CMD node main.js