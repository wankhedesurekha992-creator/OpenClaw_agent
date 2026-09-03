FROM node:22-slim
RUN npm install -g openclaw@latest
ENV PORT=10000
CMD ["openclaw", "agent"]
