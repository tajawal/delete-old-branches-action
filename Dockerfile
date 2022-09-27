# FROM alpine:latest
# LABEL maintainer="markos@chandras.me"

# RUN apk add --no-cache bash ca-certificates curl git jq

# COPY delete-old-branches /usr/bin/delete-old-branches

# This image tajawalcom/image:alpine contains the above steps, built in advance to avoid building in container error while we need to use network host and no option for that 
FROM tajawalcom/image:alpine

ENTRYPOINT ["/usr/bin/delete-old-branches"]
