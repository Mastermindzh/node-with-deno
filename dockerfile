FROM node:24
COPY --from=denoland/deno:bin-2.2.4 /deno /usr/local/bin/deno
