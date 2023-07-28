# Use the official Nodejs image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json for install dependention into the container
COPY package*.json ./

# Building code for production
RUN npm install

# Copy all file into the container
COPY . .

# Expose the port that the Nodejs application listens on HTTP Server
EXPOSE 3001

# Run the application when the cointainer is launched
CMD ["node", "app.js"]