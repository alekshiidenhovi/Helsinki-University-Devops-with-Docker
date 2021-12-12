# Download the latest version of node
FROM node:14-alpine

# Expose a port
EXPOSE 5000

# Set up the environment variable for default backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Declare the working directory
WORKDIR /usr/src/app

# Copy files from pwd to the container
COPY . .

# Install all packages, build and install serve; create a non-root user
RUN npm install && \
    npm run build && \ 
    npm install -g serve && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf node_modules/* package.json package-lock.json public src

# Run the container with serve
CMD ["serve", "-s", "-l", "5000", "build"]

# This dockerfile was run in material-applications/example-frontend folder
# Command-line: docker build . -t frontend && docker run -dit -p 5000:5000 frontend