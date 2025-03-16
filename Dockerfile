FROM node:18-alpine

WORKDIR /app

COPY package.json ./

RUN corepack enable && \
    corepack prepare pnpm@latest --activate && \
    pnpm install

ENV NODE_ENV=production
ENV N8N_PORT=3000
ENV N8N_PROTOCOL=https
ENV N8N_USER_MANAGEMENT_DISABLED=false

EXPOSE 3000

CMD ["pnpm", "start"]