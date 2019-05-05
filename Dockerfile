
FROM dtzar/helm-kubectl:latest

# Copy my credentials
COPY ./flask-kubernetes-helm /app
COPY flask-kubeconfig.yaml /config/kubeconfig.yaml

ENV KUBECONFIG /config/kubeconfig.yaml

WORKDIR /app

ENTRYPOINT sh
#CMD bash
