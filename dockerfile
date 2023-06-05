# Base image
FROM node:8

# Set the working directory
WORKDIR  /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . .

# Build the client
RUN npm run build


# Expose the server port
EXPOSE 8000

# Start the server
CMD ["npm", "run", "serve:api"]
