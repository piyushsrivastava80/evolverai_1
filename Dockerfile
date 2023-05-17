# stage 1
FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 4200
CMD npm run start
# RUN npm run build --prod

# stage 2
# FROM nginx:alpine
# COPY --from=node /app/dist/frontend_v1.1 /usr/share/nginx/html