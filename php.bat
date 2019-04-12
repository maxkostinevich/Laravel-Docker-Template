FOR /F "usebackq delims== tokens=1,*" %%i IN (".env") do SET %%i=%%j

docker exec -it %PROJECT_NAME%_php-fpm sh