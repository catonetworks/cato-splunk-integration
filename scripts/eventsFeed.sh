#!/bin/bash

# Define environment variables
CATO_TOKEN="${CATO_TOKEN}"
CATO_ACCOUNT_ID="${CATO_ACCOUNT_ID}"

# Run the Python script with environment variables
python3 eventsFeed.py -K "$CATO_TOKEN" -I "$CATO_ACCOUNT_ID" -pP -n localhost:1514 