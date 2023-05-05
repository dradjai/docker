# we are starting with a base image of node 18
FROM node:18-alpine3.16

#setup our working directory within the container
WORKDIR /src/

#copy our code form the host machine to the containers
COPY . .

#install our dependencies
RUN npm install 

#expose the port we want to run on
EXPOSE 3000

#run our application
CMD [ "npm", "start" ]

