FROM node:25.8.0
COPY --from=denoland/deno:bin-2.6.10 /deno /usr/local/bin/deno
