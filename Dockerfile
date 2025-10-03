# Use a node 22 docker image
FROM node:24.8.0-slim

WORKDIR /quicktype

ADD package.json .
ADD package-lock.json .

RUN npm ci

# Disable messages about updating the npm CLI
ENV NPM_CONFIG_UPDATE_NOTIFIER=false

# Allow the caller to pass arguments to quicktype
ENTRYPOINT ["npx", "quicktype"]

# Default entrypoint will be npx quicktype --help
CMD ["--help"]
