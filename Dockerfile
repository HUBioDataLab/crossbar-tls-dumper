FROM ldez/traefik-certs-dumper:v2.10.0

RUN apk add --no-cache bash

COPY ./entrypoint.bash .
COPY ./neo4j-hook.bash .
RUN chmod +x ./entrypoint.bash ./neo4j-hook.bash

ENTRYPOINT ./entrypoint.bash
