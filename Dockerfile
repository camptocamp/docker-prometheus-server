FROM prom/prometheus:v1.4.1
MAINTAINER Marc Fournier <marc.fournier@camptocamp.com>

COPY /docker-entrypoint.sh /
COPY /docker-entrypoint.d/* /docker-entrypoint.d/
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/bin/prometheus", "-config.file=/etc/prometheus-config/prometheus.yml", "-storage.local.path=/prometheus", "-web.console.libraries=/etc/prometheus/console_libraries", "-web.console.templates=/etc/prometheus/consoles", "-storage.local.max-chunks-to-persist=131072", "-storage.local.memory-chunks=262144", "-log.format=logger:stdout?json=true"]
