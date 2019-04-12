FOR /F "usebackq delims== tokens=1,*" %%i IN (".env") do SET %%i=%%j

docker exec -it %PROJECT_NAME%_mysql mysql -u%MYSQL_USER% -p%MYSQL_ROOT_PASSWORD% %MYSQL_DATABASE%
