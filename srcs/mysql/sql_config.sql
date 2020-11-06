
CREATE USER 'gmoshe'@'%' IDENTIFIED BY 'gmoshe';
GRANT ALL PRIVILEGES ON wordpress.* TO 'gmoshe'@'%';

CREATE DATABASE wordpress;

FLUSH PRIVILEGES;