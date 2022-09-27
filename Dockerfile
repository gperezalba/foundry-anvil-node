# Use the latest foundry image
FROM ghcr.io/foundry-rs/foundry

# EXPOSE 8545
ARG HOST_IP
ARG RPC_PORT
ARG FORK_URL
ENV HOST_IP = ${HOST_IP}
ENV RPC_PORT = ${RPC_PORT}
ENV FORK_URL = ${FORK_URL}
COPY . .
ADD entrypoint.sh /app/entrypoint.sh
COPY --chown=root:root --chmod=765 cast-rpc.sh /app/cast-rpc.sh
RUN ["chmod", "+x", "/app/entrypoint.sh"]
ENTRYPOINT ["/app/entrypoint.sh"]