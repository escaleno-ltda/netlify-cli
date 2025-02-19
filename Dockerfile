FROM node:14.18.2-alpine3.12

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV VERSION=2.58.0

WORKDIR /home/node

# Install netlify-cli, jq amd curl
RUN npm i -g netlify-cli@$VERSION && apk add --no-cache jq=1.6-r1 curl=7.69.1-r0

# Change default user to node
USER node

CMD ["netlify-cli"]
