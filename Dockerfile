FROM node:22-slim

RUN npm install -g openclaw@latest

ENV PORT=3000
ENV OPENCLAW_GATEWAY_BIND=lan
ENV OPENCLAW_GATEWAY_PORT=3000

EXPOSE 3000

CMD ["sh", "-c", "openclaw plugins install deepseek --accept-capabilities || true; openclaw plugins enable deepseek --accept-capabilities || true; openclaw gateway run --bind lan --port $PORT --allow-unconfigured"]
