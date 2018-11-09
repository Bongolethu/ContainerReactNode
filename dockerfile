FROM node:latest
# Install app dependencies 
RUN mkdir -p /var/www/app
WORKDIR /var/www/app
COPY node-react-container/package.json /var/www/app/
COPY node-react-container/public /var/www/app/public/
COPY node-react-container/src /var/www/app/src/
COPY . /var/www/app/  
RUN npm install
# RUN npm install react-scripts@0.9.5 -g
# Bundle app source

EXPOSE  3000 
CMD [ "npm","start" ]