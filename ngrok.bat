FOR /F "usebackq delims== tokens=1,*" %%i IN (".env") do SET %%i=%%j

ngrok http --subdomain=%PROJECT_NAME% 8080