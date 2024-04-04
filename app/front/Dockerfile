###################
# DEVELOPMENT STAGE
###################

FROM node:18-alpine AS development-stage

USER node

WORKDIR /var/www/html
COPY --chown=node:node package.json ./
COPY --chown=node:node yarn.lock ./

RUN yarn install --immutable --immutable-cache --check-cache

COPY --chown=node:node . .

CMD ["sh", "-c", "yarn && yarn dev"]


###################
# PRODUCTION STAGE
###################

FROM node:18-alpine AS production-stage

USER node

WORKDIR /var/www/html
COPY --chown=node:node package.json ./
COPY --chown=node:node yarn.lock ./

RUN yarn install --immutable --immutable-cache --check-cache

COPY --chown=node:node . .

RUN yarn build
# CMD [ "node", "dist/main.js" ]



