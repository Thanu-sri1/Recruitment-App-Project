<<<<<<< HEAD
FROM node:18-alpine
 
# Set working directory inside container
WORKDIR /app
 
# Copy package files first (for efficient caching)
COPY package*.json ./
 
# Install dependencies
RUN npm install --production
 
# Copy the rest of the project files
COPY . .
 
# Expose the port your app runs on (default: 3000)
EXPOSE 3000
 
# Start the application
=======
FROM node:18-alpine
 
# Set working directory inside container
WORKDIR /app
 
# Copy package files first (for efficient caching)
COPY package*.json ./
 
# Install dependencies
RUN npm install --production
 
# Copy the rest of the project files
COPY . .
 
# Expose the port your app runs on (default: 3000)
EXPOSE 3000
 
# Start the application
>>>>>>> f225cf5eb121b792be6ef1d70fd3b2e4a98ff258
CMD ["node", "server.js"]