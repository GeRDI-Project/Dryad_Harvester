# GeRDI Harvester Image for Dryad (OAI-PMH) Harvesters

FROM docker-registry.gerdi.research.lrz.de:5043/harvest/oai-pmh:0.6.0-test9

COPY config.json /var/lib/jetty/config/OaiPmhHarvesterService/config.json
USER root
RUN chown -R jetty:jetty /var/lib/jetty/
USER jetty
EXPOSE 8080
