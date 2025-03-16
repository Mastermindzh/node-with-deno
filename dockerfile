FROM node:23
COPY --from=denoland/deno:bin-2.2.4 /deno /usr/local/bin/deno
