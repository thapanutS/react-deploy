FROM node:20 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g serve

RUN npm run build

EXPOSE 3000

CMD ["npx", "serve", "-s", "build"]