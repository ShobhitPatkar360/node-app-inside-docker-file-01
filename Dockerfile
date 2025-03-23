# Specify the base image
FROM node:latest

# Set the working directory
WORKDIR /my-node-app 

# Copy the rest of the application code
COPY . .

# Set the environment variable
ENV PORT=3000
ENV TEXT="hello from env var"

#RUN npm i express
RUN npm init -y
RUN npm i express

# Expose the port the app will listen on
EXPOSE $PORT

# Define the command to run the app
CMD ["node", "index.js"]
