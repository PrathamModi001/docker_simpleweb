FROM node:18-alpine

# Create a directory to copy your application code
WORKDIR /app

# Only when package.json changes, npm install will run, minimising cache busting
COPY ./package.json ./
RUN npm install

# Copy everything from the current directory to the PWD INSIDE the container
COPY ./ ./

CMD [ "npm", "start" ]