FROM node:26.2.0
COPY --from=denoland/deno:bin-2.7.11 /deno /usr/local/bin/deno
