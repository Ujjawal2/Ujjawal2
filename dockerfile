FROM centos:latest
MAINTAINER ujjawal3022@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page272/tea-flower.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip tea-flower.zip
RUN cp -rvf tea-flower/* .
RUN rm -rf tea-flower tea-flower.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
