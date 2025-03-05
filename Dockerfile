FROM nginx:latest
COPY web /usr/share/nginx/html
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]

FROM node:16
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "server.js"]
