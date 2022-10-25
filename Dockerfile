FROM niiiix/debian:mini-latest
LABEL MAINTAINER="Sadegh Khademi" EMAIL="khademi.sadegh@gmail.com"

ENV KUBE_VERSION=1.25.3
ENV HELM_VERSION=3.10.1
ENV YQ_VERSION=4.28.2
ENV TARGETOS=linux
ENV TARGETARCH=amd64


RUN apt-get update \
    && apt-get install --auto-remove -y wget curl jq \
    && wget -q https://storage.googleapis.com/kubernetes-release/release/v${KUBE_VERSION}/bin/${TARGETOS}/${TARGETARCH}/kubectl -O /usr/local/bin/kubectl \
    && wget -q https://get.helm.sh/helm-v${HELM_VERSION}-${TARGETOS}-${TARGETARCH}.tar.gz -O - | tar -xzO ${TARGETOS}-${TARGETARCH}/helm > /usr/local/bin/helm \
    && wget -q https://github.com/mikefarah/yq/releases/download/v${YQ_VERSION}/yq_${TARGETOS}_${TARGETARCH} -O /usr/local/bin/yq \
    && chmod +x /usr/local/bin/helm /usr/local/bin/kubectl /usr/local/bin/yq \
    && helm repo add "stable" "https://charts.helm.sh/stable" --force-update
CMD bash
