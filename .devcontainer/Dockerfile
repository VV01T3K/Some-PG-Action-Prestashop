FROM mcr.microsoft.com/devcontainers/php:1-8.2-bookworm

# Fix expired Yarn GPG key that breaks docker-in-docker feature
# See: https://github.com/devcontainers/features/issues/1543
RUN rm -f /etc/apt/sources.list.d/yarn.list

COPY --from=oven/bun /usr/local/bin/bun /usr/local/bin/bun
RUN ln -s /usr/local/bin/bun /usr/local/bin/bunx

COPY --from=caddy:latest /usr/bin/caddy /usr/local/bin/caddy

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY --from=ghcr.io/astral-sh/ruff:latest /ruff /usr/local/bin/ruff