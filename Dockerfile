FROM node:latest

WORKDIR /app

# ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json ./
COPY vite.config.js ./
COPY index.html ./
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN npm install --silent

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3000:3000

CMD ["npm", "run", "dev"]


