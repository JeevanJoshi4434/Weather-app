# Use the official Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /weather_app_jeevan_joshi

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3259

# Command to run the application
CMD ["npm", "start", "--", "-p", "3259"]
