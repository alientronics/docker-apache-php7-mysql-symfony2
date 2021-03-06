A Docker image based on Ubuntu, running PHP7 on Apache2 using a MySQL Database for a Fleetany Web Application.

### Technical requirements  
 - Install Docker
 
The host machine must have Docker installed in order to build and run the Container.
Instructions on how to install Docker can be found on the official [page](https://docs.docker.com/engine/installation/)
 - Install Docker Compose
 
Docker Compose helps on orchestrating the communication between the `application` container and `mysql` container.
Instructions on how to install Docker Compose can be found on the official [page](https://docs.docker.com/compose/install/).
 
### Installation
 
 - Clone source code
 
 On the host machine clone the GitHub(`git` is required to be installed) repository by executing:
 
 ```
  git clone https://github.com/alientronics/fleetany-docker
 ```
 
 - Run Docker
 
 Go to the root directory of project and execute command:
 
 ``` 
    sudo docker-compose up -d
 ``` 

- Configure Database
 
 Run artisan migrate at application container to configurate the database.
 It could take a while. Make sure Mysql container is runninig.
 
 ``` 
    sudo docker-compose exec application php artisan migrate:refresh --seed --force
 ``` 

 - Now you can access the Fleetany Web at:
 
 ```
 http://localhost/
 user: admin@alientronics.com.br
 pass: admin
 ```

> The docker installation exposes ports **80** and **3306** so this 2 ports must be free on the host machine


 - Something wrong? Clean up and try again:
```
sudo docker-compose stop
sudo docker system prune -a
```

### Installed packages

- Ubuntu Server 16.04(official docker image **php:7.0-apache**)
- Apache2(official docker image **php:7.0-apache**)
- PHP7(official docker image **php:7.0-apache**)
- MySQL(official docker image, latest stable version)
- CURL
- Composer
