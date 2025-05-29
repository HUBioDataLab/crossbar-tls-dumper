#!/usr/bin/env bash

while ! [ -e ${ACME_JSON_PATH} ] || ! [[ `jq ".[] | .Certificates | length" ${ACME_JSON_PATH}` != 0 ]]; do
    sleep 1;
done
traefik-certs-dumper file --version v2 --watch --source "${ACME_JSON_PATH}" --dest /letsencrypt/certs --domain-subdir=true --post-hook "./neo4j-hook.bash"

echo traefik-cert-dumper has started watching "${ACME_JSON_PATH}"
