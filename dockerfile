FROM node:26.8.2
COPY --from=denoland/deno:bin-2.9.5 /deno /usr/local/bin/deno
