FROM node:18.12.0-alpine3.15 as builder

WORKDIR /app
COPY package.json .
COPY package-lock.json .

RUN npm install

COPY tsconfig.json .
COPY tsconfig.node.json .
COPY vite.config.ts .

COPY public public
COPY src src
COPY index.html .

RUN npm run build

FROM nginx:1.23.2-alpine as runner

COPY --from=builder /app/dist /usr/share/nginx/html
COPY ./nginx.conf  /etc/nginx/

CMD ["nginx" , "-g", "daemon off;"];