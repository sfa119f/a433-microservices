# using base image Node.js version 14
FROM node:16-alpine

# set working directory to "/app"
WORKDIR /app

# copy source code to working directory
COPY . .

# install dependecies
RUN npm install --production --unsafe-perm

# run server"
CMD ["npm", "start"]
