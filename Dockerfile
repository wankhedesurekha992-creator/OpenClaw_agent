FROM node:22-slim
RUN npm install -g openclaw@latest
ENV PORT=10000
CMD ["sh", "-c", "openclaw gateway start --port 10000 --no-systemd"]
