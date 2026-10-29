FROM node:26.13.0
COPY --from=denoland/deno:bin-2.9.7 /deno /usr/local/bin/deno
