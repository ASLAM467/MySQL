# Use the official MySQL 5.7 image from Docker Hub
FROM mysql:5.7

# Environment variables
ENV MYSQL_ROOT_PASSWORD=root_password
ENV MYSQL_DATABASE=django_db
ENV MYSQL_USER=django_user
ENV MYSQL_PASSWORD=django_password

# Expose port 3306 to allow external connections to the MySQL server
EXPOSE 3306

# (Optional) If you need to customize MySQL configuration, you can copy a custom configuration file
# COPY my.cnf /etc/mysql/my.cnf

# (Optional) If you need to initialize the database with some SQL scripts, you can copy them here
# COPY init.sql /docker-entrypoint-initdb.d/

# Docker container health check (optional)
# HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
#   CMD mysqladmin ping -h localhost || exit 1

# (Optional) Additional configuration or commands can be added as needed

# Start MySQL service when the container launches
CMD ["mysqld"]
