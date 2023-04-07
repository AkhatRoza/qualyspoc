ADD file ... in /
CMD ["bash"]
LABEL maintainer=opsxcq@strm.sh
/bin/sh -c apt-get update &&
COPY file:e1162a50525b284972b663daef5ca505c724673da0dda9a707bc8f67e4ec1220 in /etc/php5/apache2/php.ini
COPY dir:9c23b23aaae913c12ab3d2659b4d45398ee5652ed113267814c49d9ba501992a in /var/www/html
COPY file:55e9d94279708ad763c17a1ca775e225829b275ace5716ca8a0aff69c70161a4 in /var/www/html/config/
/bin/sh -c chown www-data:www-data -R
/bin/sh -c service mysql start
EXPOSE 80
COPY file:f24e7713eb6c0568608bea3ff7b52edda86305cfd5bef0ac4e57efdb15792202 in /
ENTRYPOINT ["/main.sh"]
