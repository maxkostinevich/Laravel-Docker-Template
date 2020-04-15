# Laravel Docker Template
Docker Compose template for rapid Laravel/PHP development.

![bash](https://user-images.githubusercontent.com/10295466/56030094-b0ec6900-5d24-11e9-967f-259a9579dd70.png)

Linux, OS X and Windows friendly.

This Docker template is also suitable for any other PHP projects, feel free to modify Docker configuration as needed.

## Included services
- Nginx
- PHP 7.4
- MySQL
- Redis
- Adminer
- Redis Commander
- Mailhog (Mailcatcher alternative)


## Project Setup

### Prepare the Docker template

1. Clone this repo:

```
git clone git@github.com:laravel-101/Laravel-Docker-Template.git yourproject
cd yourproject
rm -rf .git
```

To delete sample ```index.php``` file run ```rm -rf /src/public```

2. Update project name in ```.env``` file

3. Build and run containers:

```
docker-compose build
docker-compose up
```


### Setting up existing project

1. Put your project files into ```/src``` folder and update your project ```.env``` file:

```
APP_URL: http://localhost:8080
DB_HOST: mysql
DB_PORT: 3306
```

Note: webroot folder is set to ```/src/public```

2. Login into ```php-fpm``` container:

- on Windows:

```
php.bat
```
- on Linux/OS X:

```
sh php.sh
```

and run all required commands, for example:

```
composer install
php artisan migrate

npm install
npm run dev
```

If your ```APP_KEY``` is not generated yet, you may generate it by the following command:
```
php artisan key:generate
```

### Setting up new project

To create new Laravel project simply login into ```php-fpm``` container using the following script:

- on Windows:

```
php.bat
```
- on Linux/OS X:

```
sh php.sh
```

and create a new Laravel app using ```laravel new``` command.


### Running containers in the background

You may also run containers in the background using the following script:

- on Windows:

```
serve.bat
```

- on Linux/OS X:

```
sh serve.sh
```


### Stop and delete containers


To stop Docker containers run:

```
docker-compose stop
```

To delete Docker containers run:

```
docker-compose down
```

### Database Management

For your convenience, Adminer is installed and available at ```http://localhost:6080```

You may also login into ```mysql``` container using the following script:

- on Windows:
```
mysql.bat
```

- on Linux/OSX:
```
sh mysql.sh
```


### Redis configuration

To use Redis in your project,you'd need to install predis first:

```
composer require predis/predis
```

Then setup Redis connection in your ```.env``` file as follows:

```
REDIS_HOST=redis

CACHE_DRIVER=redis
SESSION_DRIVER=redis
QUEUE_DRIVER=redis
```

For your convenience, Redis Commander is installed and available at ```http://localhost:6081```


### Windows-only 

**Phantom containers**

In order to force stop all running containers you may need to run the following script: 
```
docker-stop.bat
```

**Make shorthand command**

```
make.bat appname
```


### Main Endpoints

- App URL: ```http://localhost:8080```
- Adminer: ```http://localhost:6080```
- Redis Commander: ```http://localhost:6081```
- MailHog: ```http://localhost:6082```


---
### [MIT License](https://opensource.org/licenses/MIT)
(c) 2020 [Max Kostinevich](https://maxkostinevich.com) - All rights reserved.
