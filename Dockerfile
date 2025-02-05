FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the source code into the container
COPY src/ /var/www/html/

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copy composer.json and composer.lock
COPY composer.json composer.lock /var/www/html/

# Install Composer dependencies
RUN composer install