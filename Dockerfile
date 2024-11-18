FROM oven/bun:latest

WORKDIR /app

COPY . /app

RUN bun install
RUN bun run build

ENTRYPOINT ["tail", "-f", "/dev/null"]
