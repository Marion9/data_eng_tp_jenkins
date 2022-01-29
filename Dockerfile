FROM node:16
WORKDIR /app
COPY node_app_with_jenkins/package.json /app
RUN npm install
COPY node_app_with_jenkins/ /app
EXPOSE 3000
CMD ["npm", "start"]
