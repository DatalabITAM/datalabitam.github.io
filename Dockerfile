FROM klakegg/hugo:0.111.3-busybox-onbuild

ENV HUGO_DESTINATION=/app/docs

WORKDIR /app

COPY . .