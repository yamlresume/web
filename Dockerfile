# syntax=docker/dockerfile:1

ARG NODE_VERSION=24-bookworm-slim
ARG PNPM_VERSION=10.34.9

FROM node:${NODE_VERSION} AS base
ENV PNPM_HOME=/pnpm
ENV PATH="${PNPM_HOME}:${PATH}"
ENV NEXT_TELEMETRY_DISABLED=1
ARG PNPM_VERSION
RUN npm install --global pnpm@${PNPM_VERSION}
RUN apt-get update \
  && apt-get install -y --no-install-recommends git \
  && rm -rf /var/lib/apt/lists/*

FROM base AS deps
WORKDIR /app
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
COPY next.config.mjs source.config.ts ./
RUN HUSKY=0 pnpm install --frozen-lockfile

FROM base AS builder
WORKDIR /app
ENV NODE_ENV=production
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN if [ "$(git rev-parse --is-shallow-repository 2>/dev/null)" = "true" ]; then \
      git fetch --unshallow \
      || echo "warning: git history is still shallow; lastModified data may be incomplete"; \
    fi
RUN pnpm build && test -f .next/server/search-index.json

FROM node:${NODE_VERSION} AS runner
WORKDIR /app
ENV NODE_ENV=production
ENV HOSTNAME=0.0.0.0
ENV PORT=3000
ENV NEXT_TELEMETRY_DISABLED=1
RUN mkdir .next && chown node:node .next
COPY --from=builder --chown=node:node /app/public ./public
COPY --from=builder --chown=node:node /app/.next/standalone ./
COPY --from=builder --chown=node:node /app/.next/static ./.next/static
COPY --from=builder --chown=node:node /app/.next/server/search-index.json ./.next/server/search-index.json
USER node
EXPOSE 3000
CMD ["node", "server.js"]
