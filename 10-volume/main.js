"use strict";

const http = require("http");
const fs = require("fs/promises");

// Constants
const APP_PORT = process.env.APP_PORT;
const APP_DATA = process.env.APP_DATA;

const server = http.createServer(async (request, response) => {
  if (request.url.length > 1) {
    response.write(`Hello ${request.url.slice(1)}`);
    const dataStr = `Hello ${request.url.slice(1)}`;

    await fs.writeFile(`${APP_DATA}/${request.url.slice(1)}.txt`, dataStr);
  } else {
    response.write("Hello HTTP Server");
  }
  response.end();
});

server.listen(APP_PORT);
