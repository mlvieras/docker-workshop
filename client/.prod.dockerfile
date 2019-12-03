FROM node:12.13.0

# Install the NPM version we use.
# Must be run as root.
RUN npm i -g npm@6.12.0

RUN mkdir -p /code/node_modules && chown -R node:node /code

WORKDIR /code

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

RUN npm run build

EXPOSE 3000

CMD npm run serve-build
