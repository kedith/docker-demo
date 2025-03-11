# Dockerfile demo

This project showcases how we can run a simple bash script inside a docker container.

The repo has two relevant files:
- ```Dockerfile``` a Dockerfile used to containerize the _hello.sh_ script
- ```hello.sh``` a simple bash script which executes some commands

## 1. Write your first Dockerfile

Do the following steps:
- open the ``Dockerfile``
- add the 4 missing instructions

## 2. Build & run

- build the docker image
- run a docker container using the new image
- change the name which gets printed out to your name

## 3. Tag & push the image

- tag the previously created image with a tag pointing to your Dockerhub repo and give it a version tag as well, ex 1.0.0
- use this tag to push the image to your docker repo

## 4. Verify access to the outside world

- try to run ```curl https://www.google.com``` inside the container ( append at the end of the docker run command)
- analyze and try to fix the issues
- build the image with the tag: ```hello-app:test``` 
- run it with ```curl```

## 5. Delete the created image

- after testing delete the image: ```docker image rm hello-app:test ```

## Useful commands:

- Build the image with a tag ``` docker build -t hello-app .```
- Run a docker container ``` docker run --rm --name hello hello-app```
- Run a docker container with a custom env property ``` docker run --rm --name hello -e "NAME=bob" hello-app```
- Check running container ```docker ps```
- Tag with fully qualified name ```docker tag hello-app:latest <your-dockerhub-repo>/hello-app:1.0.0```
- Push to dockerhub ```docker push <your-dockerhub-repo>/hello-app:1.0.0```
- Pull from dockerhub ```docker pull <your-dockerhub-repo>/hello-app:1.0.0```
- Stop a docker container ```docker stop hello```