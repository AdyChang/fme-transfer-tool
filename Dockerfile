FROM nginx:stable-alpine
# Upgrade everything: libraries ship as separate packages (libexpat, libcurl, libuuid...)
# libxslt CVE-2026-125350（CISA KEV, 1.1.43-r3→r4, 2026-11-10 通報）及本週相關 CVE 修補
RUN apk update && apk upgrade --no-cache
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]