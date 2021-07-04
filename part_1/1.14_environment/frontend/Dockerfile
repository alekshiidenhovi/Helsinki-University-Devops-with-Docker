# Download the latest version of node
FROM node:latest

# Expose a port
EXPOSE 5000

# Declare the working directory
WORKDIR /usr/src/app

# Copy the package.json file
COPY package*.json ./

# Install all packages
RUN npm install

# Copy the files from current directory
COPY . .

# Set up the environment variable for default backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Build the static files
RUN npm run build

# Install serve
RUN npm install -g serve

# Run the container with serve
CMD ["serve", "-s", "-l", "5000", "build"]

# Command-line: docker build . -t frontend-project && docker run -p 5000:5000 frontend-project