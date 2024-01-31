FROM nginx:alpine
WORKDIR /usr/local/app
COPY . /usr/share/nginx/html
EXPOSE 80