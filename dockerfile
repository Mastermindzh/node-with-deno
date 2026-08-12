FROM node:26.7.0
COPY --from=denoland/deno:bin-2.9.5 /deno /usr/local/bin/deno
