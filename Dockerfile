# Use node 20
FROM node:20

# Install nodemon
RUN npm install -g nodemon

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the files
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]