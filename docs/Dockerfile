# DOCKERFILE !

# pull the official base image
FROM node:14.5

# set the working directory
WORKDIR /app

# copy package.json and package-lock.json into the container
COPY package*.json ./

# install the neccessary dependencies
RUN npm install

# copy the rest of the application into the container
COPY . .

# expose the application on port 80
EXPOSE 3000

# start the app
CMD ["npm" , "start"]
