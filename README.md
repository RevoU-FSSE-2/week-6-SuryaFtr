# Docker and It's Integration with Node.js

**Docker** is a platform that allows you to package, ship, and run applications consistently in various environments. It uses containers to isolate and run applications smoothly across different operating systems.

Some of the features in docker

1. Container : A container is a small unit that holds an application and all its dependencies, isolated from its surroundings. It allows applications to run reliably regardless of the host system.

2. Image : An image is a blueprint for creating a container. It includes all the necessary components like code, libraries, and configurations needed to run an application.

3. Dockerfile : A Dockerfile is a text file that contains instructions for building an image. It defines the setup and configuration for the environment inside the container.

**Node.js** is an open source server environment, runs on various platforms (Windows, Linux, Unix, Mac OS X, etc.) and uses JavaScript on the server.

## Content

* Download & Install WSL & Docker.
* Create Dockerfile and some Node.js file.
* Using Dockerfile to build the Image.
* Running the project inside the container docker.

## Download & Install WSL & Docker

1. Before installing Docker, we have to install the Windows Subsystem for Linux (WSL) first, run the command on CMD below to install or update WSL.

```
- Use this to install WSL, if you don't not install WSL before :

wsl -- install

- Use this to update WSL, if you have already installed, make sure the version is the latest :

wsl --update 

```

2. After you have install/update WSL, now you can go to [Docker](https://www.docker.com/) site, choose your OS and click `Download Docker Dekstop`

![1-site-docker com](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/a32724b3-f877-435f-b124-1bf0e0fe74a8)

3. After download it, you can install that, on configuration section, make sure to check 'Use WSL 2 Instead of Hyper-V (recommended), because we will use WSL as backend for Docker.

![2 Install-config](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/59f8ed64-8500-46d0-a5f8-bca82410c055)

Please wait while Docker finishes unpacking and installing.

![3 Install-process](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/ea9e36fd-f7f2-436e-9f9a-a798645a7b66)

4. Done install, the next is restart your OS to finalize the installation.

![4 Install-succeed](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/acaeef44-93d5-46b1-a261-263eb1845d50)

5. After you've restart OS, you can check your intalled docker by run the command on CMD below.

```
docker version 
```
![4 Docker-version](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/20170807-ab8c-45f2-9bb6-d0537ca0e72e)

6. Now you can open your installed Docker, that have ready to use.

![5 User-agreement](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/0bcfaac5-6d59-45a5-9b88-68cfeb174141)
![5 Docker-desktop-ready-to-use](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/200ecadf-4fba-42d5-94a2-b00a7dc2ee1f)

## Create Dockerfile and some Node.js file

Converting a Node.js [application that already exists](https://gist.github.com/berdoezt/e51718982926f0caa3fcd8ed45111430) into a Docker container. 

![app js-project-example](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/6d452d19-cb8e-4a0a-a348-96843134f765)

1. Create file app.js and copy & paste node.js application that already exists into the project folder.

![app js-file](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/1ddf31f9-1335-488d-a9ec-1d703aeefa9e)

2. Create package.json file (package.json A file that holds important information about a project, like the app's name, version, and dependencies. It's like a description of the project and how it works).

![dockerfile](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/001fbc8d-80e8-4f64-8127-c72c43efaabe)

3. Create Dockerfile

![dockerfile](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/c4ba6dee-8604-400c-a1cc-d8fac9eafce5)

- `FROM` Sets the base image for the container.

- `WORKDIR` Sets the working directory inside the container.

- `COPY` Copies files from the host to the container.

- `RUN` Executes commands during image building.

- `EXPOSE` Documents the ports the container will listen on.

- `CMD` Sets the default command to run the container.

## Using Dockerfile to build the Image

Build the image through the terminal by using the command: `docker build -t your_image_name .`
- `docker build` Instructs Docker to build an image.
- `-t my-app-image` Tags the image with the name "my-app-image" (you can replace this with any desired name).
- `.` Specifies the current directory as the build context, which includes the Dockerfile and any files needed for the image.

![Bulid-the-image](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/adbf9b33-9bd8-41f6-b167-6886ecdf9f51)

## Running the project inside the container docker

1. Run the image with this command: `docker run -p your-localport:app-port your_image_name:name_tag`
- `p` refers to port, we are defining the port we will use to access the port the app is running at. [example `-p 3001:3001`]
- `:tag_name` refers to the latest version of your image [example: `docker run -p 3001:3001 docker_web_app:latest`]'

![run-image](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/9ef44ba5-0116-430f-9a24-244f40e07a18)

2. When you arleady running your images, in Docker Dekstop will show your images and the status say `Running`.

![docker-desktop-container](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/d12a6d12-0533-4b2a-b2b4-efbee75136cd)

3. Try to run in web browser http://localhost:3001/ and it already connected to running docker container.

![localhost-port-3001](https://github.com/RevoU-FSSE-2/week-6-SuryaFtr/assets/127850712/84130235-6318-4a4d-873b-e3a96236f41a)

[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/nj7iw4Wb)
