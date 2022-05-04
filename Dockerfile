FROM node:18-alpine3.14

RUN npm install -g npm@latest

WORKDIR /app

COPY . .

RUN npm i

EXPOSE 3000

CMD ["npm", "run", "dev"]
