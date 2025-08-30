FROM node:24.7.0
COPY --from=denoland/deno:bin-2.4.3 /deno /usr/local/bin/deno
