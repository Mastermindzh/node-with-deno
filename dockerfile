FROM node:26.3.1
COPY --from=denoland/deno:bin-2.8.3 /deno /usr/local/bin/deno
