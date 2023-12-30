# using base image Node.js version 14
FROM node:14-alpine

# set working directory to "/app"
WORKDIR /app

# copy source code to working directory
COPY . .

# install dependecies
RUN npm install

# expose port
EXPOSE 3001

# run server"
CMD ["node", "index.js"]
