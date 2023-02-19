FROM node:14-alpine3.12

## Create app directory
# RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json /.
RUN npm install

# SETUP ORM
RUN npx prisma db pull

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start" ]