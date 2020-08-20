FROM httpd

WORKDIR /var/httpd

COPY index.html /usr/local/apache2/htdocs/index.html
CMD ["/usr/local/bin/httpd-foreground","-D","FOREGROUND"]
EXPOSE 80
