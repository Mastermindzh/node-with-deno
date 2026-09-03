FROM node:26.8.1
COPY --from=denoland/deno:bin-2.9.5 /deno /usr/local/bin/deno
