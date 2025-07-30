# Image name from the Dockerfile
FROM node 

# Setting the working directory
WORKDIR /usr/src/app

# Copying the package and package lock json files to the working directory
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/

# Installing the dependencies
RUN npm ci 

# Copying the remaining application files to the working directory
COPY . /usr/src/app/

# Building the application
CMD [ "node","index.js" ]