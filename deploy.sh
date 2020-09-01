#/ bin/sh
docker run --rm -it \
  -v $(pwd):/src \
  klakegg/hugo:0.74.3 \
  deploy --maxDeletes -1 --invalidateCDN
