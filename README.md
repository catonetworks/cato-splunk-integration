## cato-splunk-integration
  
This project gives the ability to easily run a Splunk environment integrating Cato events. The demo environment is based on a the official Docker image for Splunk.  

## Contents
1. [Requirements](#requirements)
   * [Host setup](#host-setup)
   * [Docker for Windows](#docker-for-windows)
   * [Getting Started](#getting-started)

## Requirements

### Host setup

1. Install [Docker](https://www.docker.com/community-edition#/download) 
1. Install [Docker Compose](https://docs.docker.com/compose/install/) 
1. Install [Python](https://www.python.org/downloads/) 
1. Clone this repository or unzip an cato-splunk-integration-xx.zip distribution
1. Define the following [environment variables](https://en.wikipedia.org/wiki/Environment_variable) on your system:
   - SPLUNK_PASSWORD - Password to be used to login to splunk
   - CATO_TOKEN - Create a [Cato API token](https://support.catonetworks.com/hc/en-us/articles/4413280536081-Generating-API-Keys-for-the-Cato-API)
   - CATO_ACCOUNT_ID - Unique numeric identifier for your Cato account

### Docker for Windows

If you're using Docker for Windows, ensure the "Shared Drives" feature is enabled for the `C:` drive (Docker for Windows > Settings > Shared Drives). See [Configuring Docker for Windows Shared Drives](https://blogs.msdn.microsoft.com/stevelasker/2016/06/14/configuring-docker-for-windows-volumes/) (MSDN Blog).

## Getting Started

### Bringing up the stack
```bash
docker compose build
docker up -d
```

### Purge and rebuild the stack
```bash
./rebuild.sh
```

### Splunk Ports

- 8000: Splunk GUI - http://your-host-ip:8000 user: admin, password: yourpassword)
- 1514: TCP Listener

### Send event data into Splunk
- Change directories into the scripts folder and run the `eventsFeed.py` script to start to forward data into your splunk instance on the listening port. 
```
cd /path/to/package/cato-splunk-integration/scripts

python3 eventsFeed.py -K "$CATO_TOKEN" -I "$CATO_ACCOUNT_ID" -pP -n localhost:1514 
```
