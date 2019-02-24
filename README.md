# Docker Node

```bash
export NODE_VERSION=10
node() {
  docker run --rm -ti -v $(pwd):/data -i reduardo7/node:$NODE_VERSION "$@"
}
```
