FROM	debian:buster

RUN		apt update

RUN		apt install -y nginx vim curl unzip openssl mariadb-server php7.3 php7.3-bcmath php7.3-bz2 php7.3-intl php7.3-gd php7.3-mbstring php7.3-mysql php7.3-zip php7.3-fpm \
		&& curl https://wordpress.org/latest.tar.gz -o /tmp/wordpress.tar.gz && curl https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.zip -o /tmp/pma.zip

RUN		tar xf /tmp/wordpress.tar.gz && mv wordpress /var/www/html/wordpress && unzip /tmp/pma.zip && mv phpMyAdmin-5.1.0-all-languages/ ../var/www/html/phpMyAdmin
		
RUN		rm -rf /tmp/wordpress.tar.gz && rm -rf /tmp/pma.zip

COPY	srcs/wp-config.php /var/www/html/wordpress/wp-config.php
COPY	srcs/default /etc/nginx/sites-available/default
COPY	srcs/phpmyadmin.inc.php ./tmp/phpmyadmin.inc.php

CMD 	service nginx start && nginx -g "daemon off;"

EXPOSE	80 443
