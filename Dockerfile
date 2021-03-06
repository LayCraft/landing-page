# matches the node version used by openshift S2i image
FROM node:10 as node

WORKDIR /usr/src/app

# install a specific NPM version
RUN npm install -g npm@6.10.3

# copy package and package-lock
COPY package*.json ./

# run npm as continuous integration (Fetches dependencies every build.)
RUN npm install

COPY . .

# ng serve (4200)
EXPOSE 8080

CMD ["npm", "start"]
