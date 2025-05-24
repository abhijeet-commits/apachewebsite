 Use Ubuntu base image
FROM ubuntu:latest

# Avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copy web files into Apache root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
