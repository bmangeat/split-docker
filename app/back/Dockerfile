###################
# DEVELOPMENT STAGE
###################

FROM node:18-alpine AS development-stage

USER node

WORKDIR /var/www/html
COPY --chown=node:node package*.json ./

RUN yarn install --immutable --immutable-cache --check-cache

COPY --chown=node:node . .

CMD ["yarn", "start:dev"]

###################
# PRODUCTION STAGE
###################

FROM node:18-alpine AS production-stage

USER node

WORKDIR /var/www/html
COPY --chown=node:node package*.json ./

RUN yarn install --immutable --immutable-cache --check-cache

COPY --chown=node:node . .

RUN yarn build

CMD ["node", "dist/main.js"]

#docker run -p80:3000 nest-cloud-run

