FROM node:14.17.1-alpine3.13
WORKDIR /var/www/app

# Copio o package*.json primeiro, para me beneficiar das
# camadas cacheadas na hora de montar a imagem, já que é muito mais
# comum você alterar outros arquivos que o próprio package*.json
COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]