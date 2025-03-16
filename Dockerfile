FROM node:16-alpine

WORKDIR /app

COPY package.json ./

RUN npm install sqlite3
RUN npm install n8n

ENV NODE_ENV=production
ENV N8N_PORT=3000
ENV N8N_PROTOCOL=https
ENV DB_TYPE=sqlite
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

EXPOSE 3000

CMD ["npm", "start"]