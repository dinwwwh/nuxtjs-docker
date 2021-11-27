FROM node:lts-alpine

# Create app directory
WORKDIR /app
COPY ./src/ .

RUN yarn
RUN yarn build

ENV HOST 0.0.0.0
EXPOSE 3000

# start command
CMD yarn start