FROM quay.io/coreos/sao:latest

ADD jboss-chart /chart
ADD jboss-app-operator-config.yaml config.yaml

CMD ["start", "--config", "/config.yaml"]
