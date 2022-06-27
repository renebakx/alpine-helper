FROM alpine:3.16
ENV KUSTOMIZE_VER 4.5.5
LABEL maintainer Rene Bakx
RUN apk --update add less bash curl git openssh jq
RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/v${KUSTOMIZE_VER}/kustomize_${KUSTOMIZE_VER}_linux_amd64  -o /usr/bin/kustomize \
    && chmod +x /usr/bin/kustomize

ENTRYPOINT ["/bin/bash", "-c"]    
