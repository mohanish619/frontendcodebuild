# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set the working directory to /app in the container
WORKDIR /app

# Install Node.js and dependencies for building the app
RUN apk add --no-cache nodejs npm

# Copy the package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project into the container
COPY . .

# Build the project using Vite
RUN npm run build

# Copy the dist folder into Nginx's root directory
COPY dist/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command to run Nginx (default)
CMD ["nginx", "-g", "daemon off;"]
