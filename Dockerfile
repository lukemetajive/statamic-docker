FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy the source code into the container
COPY src/ /var/www/html/

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy composer.json and composer.lock
COPY composer.json /var/www/html/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN service apache2 restart
# Install Composer dependencies
RUN composer install
