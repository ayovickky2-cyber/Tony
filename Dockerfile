# Use the official Node.js image
FROM node:lts

# Create an app directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's code
COPY . .

# Tell Docker which port your app runs on (usually 3000 or 8080)
EXPOSE 3000

# The command to start your app
CMD ["npm", "start"]
