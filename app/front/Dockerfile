FROM node:18-alpine

USER node

WORKDIR /var/www/html
COPY --chown=node:node package.json ./
COPY --chown=node:node yarn.lock ./

RUN yarn install --immutable --immutable-cache --check-cache

COPY --chown=node:node . .

CMD ["yarn", "dev"]

#docker run -p3000:3000 splitfront


