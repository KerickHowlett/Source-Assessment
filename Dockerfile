FROM node:22-alpine AS base

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN corepack enable

WORKDIR /usr/app

FROM base AS prod-deps

COPY package.json pnpm-lock.yaml .npmrc ./

RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --prod --frozen-lockfile

FROM base AS builder

COPY . .

RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile
RUN pnpm run build

# hadolint ignore=DL3007
FROM gcr.io/distroless/nodejs20-debian12:latest AS server

WORKDIR /usr/app

COPY --from=prod-deps /usr/app/node_modules ./node_modules
COPY --from=builder /usr/app/dist/nestjs ./

EXPOSE 3000/tcp

CMD [ "./main.js" ]
