FROM dockerfile/java
MAINTAINER info@abroweb.ru

RUN apt-get update && apt-get install unzip

#ADD http://download.forge.ow2.org/spagobi/All-In-One-SpagoBI-4.1_16122013.zip /root/All-In-One-SpagoBI-4.1_16122013.zip
#ADD http://download.forge.ow2.org/spagobi/postgres-dbscript-4.1.0_01122013.zip /root/postgres-dbscript-4.1.0_01122013.zip

ADD ./resources/All-In-One-SpagoBI-4.1_16122013.zip /root/All-In-One-SpagoBI-4.1_16122013.zip
ADD ./resources/postgres-dbscript-4.1.0_01122013.zip /root/postgres-dbscript-4.1.0.zip

ADD ./resources/install /root/install

RUN chmod 755 /root/install && /root/install

ADD ./resources/SpagobiFilter.jar /root/SpagoBI-Server-4.1-16122013/lib/SpagobiFilter.jar
ADD ./resources/run /root/run
RUN chmod 755 /root/run

EXPOSE 8080

CMD ["/root/run"]