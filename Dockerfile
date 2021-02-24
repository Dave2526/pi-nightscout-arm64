# Pull Node Js
FROM node:lts

# update and install depencies
RUN apt-get update && apt-get install -y software-properties-common python g++ make git

# Upgrade the Files 
RUN apt-get upgrade -y

# Create Folder and setup Permissions
RUN mkdir /home/node/app && \
    chown -R node:node /home/node

USER node
ENV HOME /home/node
WORKDIR /home/node/app

# Clone the Nightscout Repo and check out the Version
RUN git clone https://github.com/nightscout/cgm-remote-monitor.git . && \
    git checkout tags/14.2.2 && \
    npm install

# Open port 1337 and setup the start Command
EXPOSE 1337
CMD ["node", "server.js"]
