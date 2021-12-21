# docker
Instalação do Webmin via Dockerfile
Dockerfile >> Dockerfile da instalação de uma aplicação java bem como suas dependencias. Ubuntu, openjdk,etc...
Dockerfile-Webmin >> Instalacao do Webmin via dockerfile
Dockerfile-old >>
Dockerfile-openjdk >> Dockerfile da instalacao de uma aplicacao java direto pela imagem do openjdk


###DICAS NA CONSTRUCAO DE UMA IMAGEM DOCKER##
DICA 1 : A ordem do cache importa
DICA 2 : COPY mais especifico para limitar a quebra do cache
DICA 3 : Identifique as instruções que podem seu AGRUPADAS.Ex: RUN apt-get install httpd vim wget.
DICA 4 : Remova as dependecias desnecessarias.
DICA 5 : Remover o cache do ferenciador de Pacotes
DICA 6 : Utilize imagens oficiais quando possivel
DICA 7 : Utilize TAGS mais especificas. Ex: FROM: openjdk:jre-11-slim ao inves de FROM:openjdk
DICA 8 : Procure por flavors minimos.
