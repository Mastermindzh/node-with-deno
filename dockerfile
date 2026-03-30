FROM node:25.8.2
COPY --from=denoland/deno:bin-2.7.6 /deno /usr/local/bin/deno
