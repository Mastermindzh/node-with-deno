FROM node:26.3.1
COPY --from=denoland/deno:bin-2.7.11 /deno /usr/local/bin/deno
