FROM nginx:alpine
WORKDIR /usr/share/nginx/html

COPY . .

EXPOSE 44513

CMD ["nginx", "-g", "daemon off;"]
