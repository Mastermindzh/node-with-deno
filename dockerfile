FROM node:26.12.1
COPY --from=denoland/deno:bin-2.9.7 /deno /usr/local/bin/deno
