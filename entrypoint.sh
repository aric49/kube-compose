#!/bin/sh

set -x

echo "Generating Kubernetes PKI Certificates......"
kubeadm alpha phase certs all --cert-dir /kubernetes
