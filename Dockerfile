#Node
FROM node:17.0.1-bullseye-slim

RUN  mkdir app

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . ./

EXPOSE 3000

CMD ["npm", "run", "dev", "--", "--host"]