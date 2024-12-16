FROM node:19.3.0-alpine3.17 AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build && ls -la /app

FROM node:19.3.0-alpine3.17 AS production
WORKDIR /app
ENV PORT=3000
ENV NODE_ENV=production

RUN apk add --no-cache curl

COPY --from=build /app/.output ./.output

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]
