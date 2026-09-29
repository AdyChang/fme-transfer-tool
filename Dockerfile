FROM nginx:stable-alpine
# Upgrade everything: libraries ship as separate packages (libexpat, libcurl, libuuid...)
RUN apk upgrade --no-cache
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
