FROM ubuntu:18.04
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    ###Ao instalar uma aplicação .jar, colocar o jre ao inves do JDK. O pacote JDK serve para caso voce deseja BUILDAR a aplicao. Como já existe o .jar, é necessário instalar somente o "jre".## 
    ## Parametro "no-install-recommends" vai instalar somente o que é obrigatorio para o jre rodar e nao o que é recomendavel. Todas essas alteracoes visam deixar a imagem docker mais "limpa".##
    openjdk-11-jre \
    nano \
    wget \
 && rm -rf /var/lib/apt/lists \
 && rm -rf /var/cache/apt
#WORKDIR /home/operazioni/
COPY app.jar /opt/app.jar
EXPOSE 9400
ENTRYPOINT ["java" , "-jar" , "/opt/app.jar"]
