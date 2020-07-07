FROM node:14.5.0-alpine3.12

LABEL maintainer "Leonardo Gatica <lgatica@protonmail.com>"

ENV VERSION=2.58.0

WORKDIR /home/node

# Install netlify-cli
RUN npm i -g netlify-cli@$VERSION

# Change default user to node
USER node

CMD ["netlify-cli"]
