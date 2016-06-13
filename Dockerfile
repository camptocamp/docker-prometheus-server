FROM prom/prometheus:0.19.2
MAINTAINER Marc Fournier <marc.fournier@camptocamp.com>

COPY /docker-entrypoint.sh /
COPY /docker-entrypoint.d/* /docker-entrypoint.d/
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/bin/prometheus", "-log.level=debug", "-config.file=/etc/prometheus-confd/prometheus.yml", "-storage.local.path=/prometheus", "-web.console.libraries=/etc/prometheus/console_libraries", "-web.console.templates=/etc/prometheus/consoles", "-storage.local.max-chunks-to-persist=131072", "-storage.local.memory-chunks=262144"]
