FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the source code into the container
COPY src/ /var/www/html/

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite