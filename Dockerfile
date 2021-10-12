FROM alpine:3.13.6
RUN apk --no-cache add curl
COPY . .
RUN chmod 744 index.sh
