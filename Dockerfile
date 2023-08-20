FROM --platform=linux/amd64 node:16-alpine

WORKDIR /app

COPY package.json .
COPY docker-entrypoint.sh /app

COPY . .

RUN npm install 
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["npm", "start"]

