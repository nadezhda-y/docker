FROM centos:8
LABEL maintainer="SoftUni Student"
RUN rm -r /var/cache/dnf
RUN dnf update -y
RUN dnf install -y httpd
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
