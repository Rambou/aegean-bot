FROM node

# File Author / Maintainer
MAINTAINER Bousios Nikolaos

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY ./node/ /usr/src/app

# Install app dependencies
RUN npm install

# Expose port
EXPOSE 80

# Expose post virtual path
VOLUME ["/usr/src/app/config/"]

# Run app
CMD ["npm", "run", "start"]
