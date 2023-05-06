# Author: Ricardo Mejía
# Creation date: 05-05-2023
# Description: Dockerfile for the ReactJS frontend application

FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

