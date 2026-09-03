FROM node:22-slim

RUN npm install -g openclaw@latest

ENV PORT=3000
ENV OPENCLAW_GATEWAY_BIND=lan
ENV OPENCLAW_GATEWAY_PORT=3000
ENV NODE_OPTIONS="--max-old-space-size=256"
ENV OPENCLAW_GATEWAY_TRUSTED_PROXIES="100.64.0.0/10,10.0.0.0/8,172.16.0.0/12,192.168.0.0/16"

EXPOSE 3000

CMD ["sh", "-c", "openclaw plugins install deepseek --accept-capabilities || true; openclaw plugins enable deepseek --accept-capabilities || true; openclaw gateway run --bind lan --port $PORT --allow-unconfigured"]
