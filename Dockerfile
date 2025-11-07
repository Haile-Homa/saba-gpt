# 1. Use the official Node.js image
FROM node:18

# 2. Create a working directory inside the container
WORKDIR /app

# 3. Copy package.json and package-lock.json first
COPY package*.json ./

# 4. Install dependencies inside the container
RUN npm install --production

# 5. Copy all remaining project files
COPY . .

# 6. Expose the port your app runs on
EXPOSE 3000

# 7. Define the command to start the app
CMD ["npm", "start"]
