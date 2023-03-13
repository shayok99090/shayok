# Use an official Node.js runtime as a parent image
FROM node:19-alpine3.16

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to /app
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining app files to /app
COPY . .

# Build the app
RUN npm run build



# Expose port 3000 for the container
EXPOSE 3000

# Start the app
CMD ["npm", "start"]