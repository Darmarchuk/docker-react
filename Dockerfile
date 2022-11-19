FROM node:alpine as builder
WORKDIR '/app'

COPY package.json .

RUN npm install
RUN npm config set unsafe-perm true

COPY . .

CMD ["npm","run","build"]

FROM nginx 

COPY --from=builder /app/build /usr/share/nginx/html

