FROM alpine:3.20.0

RUN apk --no-cache add nodejs npm

WORKDIR /app
COPY ./my-app /app

RUN npm install
RUN chmod +x node_modules/.bin/next
RUN npm run build

EXPOSE 3000
ENTRYPOINT [ "npm", "run", "start" ]