FROM centos:latest
MAINTAINER bkranjeet1@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/free-css-templates/download/pag247/kindele.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX karkups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
