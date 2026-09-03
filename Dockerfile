FROM node:22-slim
RUN npm install -g openclaw@latest
ENV PORT=10000
CMD ["node", "/usr/local/bin/openclaw", "gateway", "start"]
