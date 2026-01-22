FROM mcr.microsoft.com/devcontainers/php:1-8.2-bookworm

COPY --from=oven/bun /usr/local/bin/bun /usr/local/bin/bun
RUN ln -s /usr/local/bin/bun /usr/local/bin/bunx

COPY --from=caddy:latest /usr/bin/caddy /usr/local/bin/caddy

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY --from=ghcr.io/astral-sh/ruff:latest /ruff /usr/local/bin/ruff