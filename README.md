# docker-quicktype

A Docker image for [quicktype](https://github.com/quicktype/quicktype)

## Usage

```bash
# Show help
docker run "ghcr.io/lucaspopp0/quicktype:latest" --help

# Generate TypeScript types from JSON
docker run --rm \
    -v "$(pwd):/data" \
    "ghcr.io/lucaspopp0/quicktype:latest" \
    --src-lang json \
    --src /data/input.json \
    --lang typescript
```
