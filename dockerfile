FROM node:26.4.0
COPY --from=denoland/deno:bin-2.8.3 /deno /usr/local/bin/deno
