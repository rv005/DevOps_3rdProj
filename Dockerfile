FROM  rhel:latest
MAINTAINER vikashashoke@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page288/startup.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip startup.zip
RUN cp -rvf startup/* .
RUN rm -rf startup startup.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
 
 
#FROM centos:latest
#MAINTAINER vikashashoke@gmail.com
#RUN yum install -y httpd \
#zip\
#unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
#WORKDIR /var/www/html/
#RUN unzip shine.zip
#RUN cp -rvf shine/* .
#RUN rm -rf shine shine.zip
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#EXPOSE 80   
