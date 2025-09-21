# Use a node 22 docker image
FROM node:22.15.1

WORKDIR /quicktype

ADD package.json .
ADD package-lock.json .

RUN npm ci

# Allow the caller to pass arguments to quicktype
ENTRYPOINT ["npx", "quicktype"]

# Default entrypoint will be npx quicktype --help
CMD ["--help"]
