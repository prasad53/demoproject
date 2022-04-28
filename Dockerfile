#FROM java:8
#WORKDIR /usr/src/app
#COPY Hello.java .
#RUN javac Hello.java
#CMD ["java","Hello"]

FROM nginx
COPY index.html /usr/share/nginx/html
