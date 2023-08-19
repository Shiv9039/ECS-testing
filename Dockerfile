FROM node:alpine

WORKDIR /app

COPY package.json .
# COPY package-lock.json .
COPY . .

RUN npm install 
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["npm", "start"]

