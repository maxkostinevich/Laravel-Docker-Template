#!/bin/bash
echo [92m..Starting containers..[0m

docker-compose up -d

clear

echo '----------------------------------------------'
echo '--      [92mDOCKER UP AND RUNNING[0m               --'
echo '----------------------------------------------'
echo '-  APP URL: http://localhost:8080            -'
echo '-  ADMINER: http://localhost:6080            -'
echo '-  REDIS UI: http://localhost:6081           -'
echo '-  MailHog: http://localhost:6082            -'
echo '----------------------------------------------'
echo '- Run [93mdocker-compose stop[0m to stop containers -'
echo '----------------------------------------------'