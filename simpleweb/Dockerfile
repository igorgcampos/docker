#Imagem base já com o node instalado
FROM node:alpine
#FROM node:current-bullseye-slim
# Diterorio onde a aplicacao vai ser salva
WORKDIR usr/app
# Copia somente o arquivo de configuração das dependencias do node. "package.json"
COPY ./package.json ./
RUN npm install
# Copia o restante dos arquivos(index.js).
# Existem dois comandos "COPY" para aproveitar o cache do build. 
#Se caso tenha alguma alteração no codigo da aplicacao(index.js) o cache da instalacao ( npm install) e da copia do arquivo .json vao ser aproveitados. 
#Vai ser usado o build somente na copia do arquivo index.js que foi aterado.
COPY  ./ ./
EXPOSE 8080
CMD ["npm", "start"]
 
