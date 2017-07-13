# Image
FROM node:boron

# Create a directory to hold the application code inside the image
RUN mkdir -p /app
WORKDIR /app

# Copy the package.json to the app and make able to run npm install
COPY package.json /app
RUN npm install

# Bundle the source code inside the Docker image
COPY . /app

# Mapped the docker daemon to the port of app
EXPOSE 8080
# Command to run the app
CMD [ "npm", "start" ]
