#!/usr/bin/env bash

echo "A change has been detected in TLS certificates."
echo "Generating Neo4j certificates."

cd /letsencrypt/neo4j-certificates

for certsource in bolt https ; do
   mkdir -p $certsource/trusted
   cp /letsencrypt/certs/$NEO4J_DOMAIN/certificate.crt $certsource/public.crt
   cp /letsencrypt/certs/$NEO4J_DOMAIN/privatekey.key $certsource/private.key
   cp /letsencrypt/certs/$NEO4J_DOMAIN/certificate.crt $certsource/trusted/public.crt ;
done

chmod -R g+rx *

echo "Neo4j certificates successfully generated."
