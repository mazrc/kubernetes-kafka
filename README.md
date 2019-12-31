# Kubernetes Kafka (Strimzi Operator) with Monitoring (Prometheus and Grafana)
A sample Kubernetes deployment config for Kafka deploy with Prometheus monitoring and Grafana dashboards

## Install
./install.sh <NameSpace> <Brokers(Integer)> <ZookeeperNodes(Integer)>

| System  | URL |
| ------------- | ------------- |
| Kafka broker  | localhost:9094  |
| Prometheus  | http://localhost:9090  |
| Grafana  | http://localhost:3000  |

## Uninstall
./uninstall.sh <NameSpace>
