FROM alpine:3.16
ENV KUSTOMIZE_VER 4.5.5
LABEL maintainer Rene Bakx
RUN apk --update add less bash curl git openssh jq
RUN curl -L https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VER}/kustomize_v${KUSTOMIZE_VER}_linux_amd64.tar.gz | tar -xz -C /bin \
    && chmod +x /usr/bin/kustomize
ENTRYPOINT ["/bin/bash", "-c"]    
