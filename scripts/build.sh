#!/bin/bash
VERSION=${GO_PIPELINE_LABEL}

set -e

mkdir artifacts
curl -L -o /tmp/rancher.tgz https://github.com/rancher/cli/releases/download/v0.4.1/rancher-linux-amd64-v0.4.1.tar.gz && \
	tar zxvf /tmp/rancher.tgz && \
	mv rancher-*/rancher artifacts/rancher && \
	rm -rf rancher-*
# terraform 
curl -o /tmp/terraform.tgz https://releases.hashicorp.com/terraform/0.8.3/terraform_0.8.3_linux_amd64.zip && \
  unzip /tmp/terraform.tgz && \
  mv terraform artifacts/terraform
