FROM mcr.microsoft.com/devcontainers/php:1-8.2-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY --from=oven/bun /usr/local/bin/bun /usr/local/bin/bun

COPY --from=caddy:latest /usr/bin/caddy /usr/local/bin/caddy

COPY --from=ghcr.io/astral-sh/ruff:latest /ruff /usr/local/bin/ruff

COPY --from=dotenv/dotenvx:latest /usr/local/bin/dotenvx /usr/local/bin/dotenvx