#!/bin/sh -e

FILE="/etc/prometheus-confd/prometheus.yml"

while [ ! -f "${FILE}" ]; do
  echo "waiting for ${FILE}"
  sleep 1
done

