ARG SPLUNK_VERSION
ARG CATO_TOKEN
ARG CATO_ACCOUNT_ID

FROM splunk/splunk:${SPLUNK_VERSION}

# Set environment variables
ENV CATO_TOKEN="${CATO_TOKEN}"
ENV CATO_ACCOUNT_ID="${CATO_ACCOUNT_ID}"

# Create log directory
RUN mkdir -p /tmp/eventgenlogs
RUN chmod 1777 /tmp/eventgenlogs

# Copy files
COPY conf/props.conf /opt/splunk/etc/system/local/props.conf
COPY conf/indexes.conf /opt/splunk/etc/system/local/indexes.conf
COPY scripts/* /opt/splunk/bin/scripts/


