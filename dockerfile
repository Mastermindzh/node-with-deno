FROM node:25.6.1
COPY --from=denoland/deno:bin-2.6.7 /deno /usr/local/bin/deno
