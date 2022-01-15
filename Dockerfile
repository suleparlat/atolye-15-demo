FROM node:15.4 as build
WORKDIR /app
COPY package.json . 
RUN yarn install  
COPY . .
RUN yarn build
CMD yarn start:dev
EXPOSE 3000
