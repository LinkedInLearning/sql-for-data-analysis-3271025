-- Using the root user, grant access to the mariadb user.
GRANT ALL PRIVILEGES ON *.* TO 'mariadb'@'%' IDENTIFIED BY 'mariadb';
