#!/bin/sh
. .env
docker exec -it ${PROJECT_NAME}_mysql mysql -u${MYSQL_USER} -p${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE}
