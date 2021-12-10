# Download the latest version of node
FROM node:14

# Expose a port
EXPOSE 5000

# Set up the environment variable for default backend
ENV REACT_APP_BACKEND_URL=http://localhost/api

# Declare the working directory
WORKDIR /usr/src/app

# Copy files from pwd to the container
COPY . .

# Install all packages, build and install serve
RUN npm install
RUN npm run build
RUN npm install -g serve

# Run the container with serve
CMD ["serve", "-s", "-l", "5000", "build"]

# This dockerfile was run in material-applications/example-frontend folder
# Command-line: docker build . -t frontend-project && docker run -p 5000:5000 frontend-project