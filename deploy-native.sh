#/ bin/sh
hugo
hugo deploy --maxDeletes -1 --invalidateCDN --logLevel info
