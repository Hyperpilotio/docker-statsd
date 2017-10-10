# Dockerfile for statsd

FROM axisk/nodejs

ADD ./etc/config.js ./etc/default/statsd.js
ADD ./run.sh /run.sh
RUN /run.sh

ENV GRAPHITE_GLOBAL_PREFIX stats
ENV GRAPHITE_LEGACY_NAMESPACE true

ENV STATSD_PORT 8125
ENV STATSD_DUMP_MSG false
ENV STATSD_DEBUG false
ENV STATSD_FLUSH_INTERVAL 5000

EXPOSE 8125/udp
EXPOSE 8126/tcp

CMD node /usr/local/src/statsd/stats.js /etc/default/statsd.js
