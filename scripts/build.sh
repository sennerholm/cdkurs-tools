#!/bin/bash
VERSION=${GO_PIPELINE_LABEL}

set -e

mkdir artifacts
curl -L -o rancher.tgz https://github.com/rancher/cli/releases/download/v0.4.1/rancher-linux-amd64-v0.4.1.tar.gz && \
	tar zxvf rancher.tgz && \
	mv rancher-*/rancher artifacts/rancher && \
	rm -rf rancher-* rancher.tgz
# terraform 
curl -o terraform.zip https://releases.hashicorp.com/terraform/0.8.3/terraform_0.8.3_linux_amd64.zip && \
  unzip terraform.zip && \
  mv terraform artifacts/terraform && \
  rm terraform.zip
