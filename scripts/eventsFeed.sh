#!/bin/bash

# Define environment variables
CATO_TOKEN="${CATO_TOKEN}"
CATO_ACCOUNT_ID="${CATO_ACCOUNT_ID}"

# Run the Python script with environment variables
/usr/bin/python /opt/splunk/bin/scripts/eventsFeed.py -K "$CATO_TOKEN" -I "$CATO_ACCOUNT_ID" -c "/tmp/config.txt" -p