
FROM node:16-alpine as build
WORKDIR /app
COPY . /app

FROM nginx:latest
COPY --from=build ./docs /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]