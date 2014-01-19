FROM dockerfile/java
MAINTAINER info@abroweb.ru

RUN apt-get update && apt-get install unzip
ADD http://download.forge.ow2.org/spagobi/All-In-One-SpagoBI-4.1_16122013.zip ./All-In-One-SpagoBI-4.1_16122013.zip
ADD http://download.forge.ow2.org/spagobi/postgres-dbscript-4.1.0_01122013.zip ./postgres-dbscript-4.1.0_01122013.zip




EXPOSE 8080

CMD ["/bin/bash"]