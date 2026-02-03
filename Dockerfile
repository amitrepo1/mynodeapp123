# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app code
COPY app.js ./

# Expose port
EXPOSE 5000

# Run the app
CMD ["node", "app.js"]

