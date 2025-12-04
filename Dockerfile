FROM v2fly/v2fly-core:v5.33.0

WORKDIR /app
CMD ["/bin/ash"]

COPY ./entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh && \
    chmod 755 /usr/bin/entrypoint.sh

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
