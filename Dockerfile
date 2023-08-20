FROM amazon/aws-ecs-optimized-nodejs16:latest

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]


