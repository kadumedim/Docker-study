#Puxa uma imagem do Node já com NPM instalado.
FROM node:17-alpine

#Define o local de trabalho do conteiner
WORKDIR /usr/src/app

#Copia o package .json
COPY package*.json ./

#Instala as dependencias constadas no nosso package.json
RUN npm install

#Copia todo nosso diretório
COPY . .

#Expoe a porta do nosso webserver
EXPOSE 8080

#E por fim... Roda nosso app 'server.js'
CMD [ "node", "server.js" ]