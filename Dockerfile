FROM nginx:latest

RUN sed -i 's/nginx/roland/g' /usr/share/nginx/html/index.html

EXPOSE 80