# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to /app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source code to /app
COPY . .

# Build the Vue.js app
RUN npm run build

# Expose the port that the app will listen on
EXPOSE 80

# Start the app
CMD ["npm", "run", "start"]
