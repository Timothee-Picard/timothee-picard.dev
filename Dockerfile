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

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3000 || exit 1

CMD ["node", ".output/server/index.mjs"]
