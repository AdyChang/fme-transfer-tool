FROM nginx:stable-alpine
RUN apk upgrade --no-cache libssl3 libcrypto3 expat libxml2
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
