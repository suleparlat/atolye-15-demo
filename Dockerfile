FROM node:15.4 as build
WORKDIR /app
ARG MODE
COPY package.json . 
RUN yarn install  
COPY . .
RUN yarn build
CMD yarn start:$MODE
EXPOSE 3000
