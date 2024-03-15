FROM node:latest

WORKDIR /app

# Install wait-for-it script
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /app/wait-for-it.sh
RUN chmod +x /app/wait-for-it.sh

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

CMD ["./wait-for-it.sh", "hello-world:8080", "--", "npm", "run", "test"]