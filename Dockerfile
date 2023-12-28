# using base image Node.js version 14
FROM node:14-alpine

# set working directory to "/app"
WORKDIR /app

# copy source code to working directory
COPY . .

# set app in production
ENV NODE_ENV=production DB_HOST=item-db

# install dependecies and build app
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# run server"
CMD ["npm", "start"]
