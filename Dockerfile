FROM node:22-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . . 
RUN npm run build && npm prune --omit=dev 
ENV PORT=9095
EXPOSE 9095
USER node
CMD ["node", "dist/index.js"]