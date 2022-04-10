FROM centos:7
MAINTAINER ahdatascientist@gmail.com
RUN yum install -y httpd \
	zip \
	unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page275/sene-ca.zip /var/www/html
WORKDIR /var/www/html
RUN unzip sene-ca.zip
RUN cp -rvf Seneca/* .
RUN rm -rf sene-ca.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
