# select your base image to start with
FROM node:14-alpine3.12

# Create app directory
# this is the location where you will be inside the container
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both packages.json AND packages-lock.json are copied
# where available (npm@5+)
# copying packages first helps take advantage of docker layers
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only-production

# Bundle app source
COPY . .

# Make this port accessible from outside e container
# Necessary for you browser to send HTTP requests to your Node app
EXPOSE 8080

# RUN apk add curl

# RUN curl www.google.com

# Command to run when the container is ready
# Seperate arguments as separate values in the array
CMD [ "npm", "run", "start"]