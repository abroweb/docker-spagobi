# SpagoBI 4.1 on Tomcat 6 with postgres
##Status: Works, but requires manual DB setup

This is SpaboBi 4.1 running in Tomcat6 with configs updated for PostgreSQL DB

Uncluded SpagoBI engines:

 - SpagoBIBirtReportEngine
 - SpagoBIConsoleEngine
 - SpagoBIMobileEngine

###To start use:
docker run -t -i -p 8080:8080 -e JAVA_OPTS="-Dcatalina.db.pass=**PASS** -Dcatalina.db.username=**USER** -Dcatalina.db.url=jbc:postgresql://IP:5432/**DATABASE**" abroweb/spagobi

Please change **PASS, USER, IP, DATABASE** of your postgres database with installed SpagoBi schema: **postgres-dbscript-4.1.0_01122013.zip**

Example:

 - psql SpagoBI < PG_create.sql
 - psql SpagoBI < PG_create_quartz_schema.sql

TODO: Compile SpagobiFilter.jar on build AND DB setup