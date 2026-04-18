FROM tomcat:latest
ADD demo/target/*.war /user/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
