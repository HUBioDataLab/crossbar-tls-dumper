# crossbar-tls-dumper

This is a tool to dump TLS certificates from a Traefik ACME JSON file and import them into Neo4j, enabling Neo4j to use them for secure connections.

It watches the `ACME_JSON_PATH` for changes and updates the certificates in Neo4j accordingly.

Two env variables are needed to run:
- `ACME_JSON_PATH`: Path to the ACME JSON file.
- `NEO4J_DOMAIN`: Domain of the Neo4j instance.

An example environment file would be like this:

```env
ACME_JSON_PATH=/letsencrypt/hubiodatalab.com.json
NEO4J_DOMAIN=neo4j.crossbarv2.hubiodatalab.com
```
