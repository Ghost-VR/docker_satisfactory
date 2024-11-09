FROM cm2network/steamcmd:root

LABEL org.opencontainers.image.authors="ghostvr"

# ENV
ENV USER=steam
ENV WORK_DIR=/home/${USER}/docker
ENV STEAM_APP_ID=1690800
ENV STEAM_APP_NAME=satisfactory_server
ENV STEAM_APP_DIR=${WORK_DIR}/${STEAM_APP_NAME}

# Setup
COPY "script" "${WORK_DIR}"
RUN mkdir -p "${WORK_DIR}"
RUN mkdir -p "${STEAM_APP_DIR}"
RUN chmod +x "${WORK_DIR}/entry.sh" "${WORK_DIR}/install.sh" "${WORK_DIR}/start_server.sh"
RUN chown -R "${USER}:${USER}" "${WORK_DIR}" "${STEAM_APP_DIR}"

# Ports
EXPOSE 7777/tcp 7777/udp

# Entry
USER ${USER}
WORKDIR ${WORK_DIR}
CMD ["bash", "entry.sh"]
