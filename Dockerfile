FROM centos:latest
MAINTAINER akkijiotode@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page15/red-haze.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip red-haze.zip
RUN cp -rvf red-haze/* .
RUN rm -rf red-haze.zip red-haze
CMD [" /usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
