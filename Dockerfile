FROM nginx:1.17.1-alpine
COPY dist/simple-angular-app /usr/share/nginx/html
EXPOSE 80
