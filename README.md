## cato-splunk-integration
  
This project gives the ability to easily run a Splunk environment integrating Cato events. The demo environment is based on a combination of official Docker images (Elastic, and Splunk).  

## Contents
1. [Requirements](#requirements)
   * [Host setup](#host-setup)
   * [SELinux](#selinux)
   * [Docker for Windows](#docker-for-windows)

## Requirements

### Host setup

1. Install [Docker](https://www.docker.com/community-edition#/download) 
2. Install [Docker Compose](https://docs.docker.com/compose/install/) 
3. Clone this repository or unzip an sa-demo-<release>.zip distribution

### SELinux

On distributions which have SELinux enabled out-of-the-box you will need to either re-context the files or set SELinux into Permissive mode in order for some docker containers to start properly. For example on Redhat and CentOS, the following will apply the proper context:

```console
$ chcon -R system_u:object_r:admin_home_t:s0 sa-demo/
```

### Docker for Windows

If you're using Docker for Windows, ensure the "Shared Drives" feature is enabled for the `C:` drive (Docker for Windows > Settings > Shared Drives). See [Configuring Docker for Windows Shared Drives](https://blogs.msdn.microsoft.com/stevelasker/2016/06/14/configuring-docker-for-windows-volumes/) (MSDN Blog).

## Getting Started

### Bringing up the stack
```bash
docker compose build
docker up -d
```

### Splunk Ports

- 8000: Splunk GUI - [http://localhost:8000](http://localhost:8000 user: admin, password: password)
- 1514: TCP Listener
- 8065: 
- 8088: 
- 9997:
- 9887:
