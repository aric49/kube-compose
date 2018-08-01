FROM alpine:latest

#Install base packages
RUN apk update && apk add curl

#Download and Install KubeADM Binary
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.10.1/bin/linux/amd64/kubeadm && \
  cp kubeadm /usr/bin/kubeadm && \
  chmod +x /usr/bin/kubeadm

WORKDIR /kubernetes

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
