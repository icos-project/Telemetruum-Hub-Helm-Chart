# Telemetruum Hub

The Telemetruum Hub is responsible for managing (collect, store, analyse, visualize) metrics and logs in an ICOS Controller.

It is constituted by multiple components:
- Thanos: for long-term storage of metrics
- OpenSearch: for long-term storage of logs
- AlertManager: for setting rules and receiving alerts on violations
- Grafana: for visualizing the data
- OpenTelemetry Collector: to receive data from ICOS Agents


## Installation

The Telemetruum Hub is part of the ICOS Controller Suite and is installed and configured toghether with it.