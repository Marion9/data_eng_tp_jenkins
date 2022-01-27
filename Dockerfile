FROM node:latest
WORKDIR node_app_with_jenkins/
COPY * node_app_with_jenkins/
EXPOSE 5000
CMD ["npm", "start"]
