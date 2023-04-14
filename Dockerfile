FROM debian:buster

ENV HOME=/home/appuser
ARG UID=999
RUN useradd --system --uid $UID --gid 0 appuser && \
    mkdir --mode=g+w $HOME

RUN apt-get update && \
    apt-get install --assume-yes --no-install-recommends \
      apache2 libapache2-mod-wsgi python-webob python-psycopg2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Configuration for running Apache as non-root user
RUN mkdir --parents /var/run/apache2/socks /var/run/lock/apache2 && \
    chgrp --recursive 0 /var/log/apache2 /var/run/apache2 && \
    chmod --recursive g+w /var/log/apache2 /var/run/apache2 && \
    sed -i -e 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf
# Set ServerName
RUN sed -i -E -e "1 i ServerName csvchecker" /etc/apache2/apache2.conf
# Additionally log time taken to serve request (%D)
RUN sed -i -E -e "s/(%t)/\1 %D/" /etc/apache2/apache2.conf
# Send Apache access log to standard out,
# and log only if APACHE_ACCESS_LOG_ENABLED is set to true
# Send Apache error log to standard out as well
RUN sed -i -E \
    -e "s/^(CustomLog) (\S*) (\S*)/\1 \"|\/bin\/cat\" \3 \"expr=osenv('APACHE_ACCESS_LOG_ENABLED') == 'true'\"/" \
    -e "$ a ErrorLog \"|\/bin\/cat\"" \
    /etc/apache2/conf-available/other-vhosts-access-log.conf

# Configure and enable csvchecker
COPY --chmod=644 csvchecker.conf /etc/apache2/sites-available/
RUN a2ensite csvchecker
RUN mkdir --parents /app/documents /app/wsgi-scripts/checker
COPY --chmod=644 python/checker.wsgi /app/wsgi-scripts/
COPY --chmod=644 python/checker/* /app/wsgi-scripts/checker/

EXPOSE 8080

USER $UID

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
