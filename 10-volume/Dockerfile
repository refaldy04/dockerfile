FROM node:18
ENV APP_PORT=8080
ENV APP_DATA=/logs

# Create app directory
WORKDIR /usr/src/app
RUN mkdir ${APP_DATA}

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev
# Bundle app source
COPY . .
EXPOSE ${APP_PORT}
VOLUME ${APP_DATA}
CMD node main.js