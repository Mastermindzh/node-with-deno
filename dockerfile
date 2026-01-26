FROM node:25.4.0
COPY --from=denoland/deno:bin-2.5.3 /deno /usr/local/bin/deno
