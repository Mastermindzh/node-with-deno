FROM node:26.5.0
COPY --from=denoland/deno:bin-2.8.3 /deno /usr/local/bin/deno
