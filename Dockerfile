FROM node:22-alpine
WORKDIR /app
COPY . .
RUN yarn install
COPY entrypoint.sh entrypoint.sh
COPY .env .env
RUN yarn build
EXPOSE 3000
RUN ["chmod", "+x", "./entrypoint.sh"]
ENTRYPOINT ["sh", "./entrypoint.sh"]
