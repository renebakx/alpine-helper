FROM alpine:3.20
ENV KUSTOMIZE_VER=5.4.3
LABEL maintainer='Rene Bakx'
RUN apk --update add sed less bash curl git openssh jq \
     && curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VER}/kustomize_v${KUSTOMIZE_VER}_linux_amd64.tar.gz | tar -xz -C /bin \
     && chmod +x /bin/kustomize
ENTRYPOINT ["/bin/bash", "-c"]  
