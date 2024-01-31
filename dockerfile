
FROM node:latest as build
WORKDIR /usr/local/app
COPY ./ /usr/local/app/
FROM nginx:latest
COPY --from=build /usr/local/app/dist/sample-angular-app /usr/share/nginx/html
EXPOSE 80