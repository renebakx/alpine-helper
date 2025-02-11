FROM alpine:3.21
ENV KUSTOMIZE_VER=5.5.0
LABEL maintainer='Rene Bakx'
RUN apk -U upgrade && apk update && apk add --no-cache rsync sed less bash curl git openssh jq \
     && curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VER}/kustomize_v${KUSTOMIZE_VER}_linux_amd64.tar.gz | tar -xz -C /bin \
     && chmod +x /bin/kustomize \
     && rm -rf /var/cache/apk/* /tmp/*
ENTRYPOINT ["/bin/bash", "-c"]  
