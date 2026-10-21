# CloudNova Technologies – Mission 10: The Enterprise Cloud Architect

## Project Overview

This project focuses on designing and deploying an enterprise-style private cloud infrastructure using Ubuntu Server, Docker, Docker Compose, and Nextcloud.

The goal is to provide a private cloud storage solution for a university that can reduce dependence on third-party cloud storage services while maintaining data persistence, security, and automated maintenance.

## Objectives

- Set up an Ubuntu Server virtual machine using VirtualBox.
- Deploy Nextcloud and MariaDB using Docker Compose.
- Configure persistent Docker volumes for data storage.
- Secure the server using UFW firewall.
- Create automated backup and health-check scripts.
- Schedule maintenance tasks using Cron.
- Document the infrastructure and deployment process.

## Infrastructure Components

| Component | Description |
|---|---|
| Host Machine | Windows Computer |
| Hypervisor | Oracle VirtualBox |
| Operating System | Ubuntu Server |
| Container Platform | Docker |
| Orchestration | Docker Compose |
| Web Application | Nextcloud |
| Database | MariaDB 11.4 |
| Firewall | UFW |
| Automation | Bash Scripts and Cron |

## Deployment Details

The system uses a two-tier Docker architecture:

1. **Nextcloud Container** – Provides the private cloud storage web application.
2. **MariaDB Container** – Stores Nextcloud database information.

Both containers communicate through a Docker network and use persistent volumes to retain data.

**Access URL:** `http://localhost:8080`

**Docker Containers:**
- `cloudnova-nextcloud`
- `cloudnova-database`

**Persistent Volumes:**
- `db_data`
- `nextcloud_data`

## Security Configuration

UFW firewall is enabled with the following configuration:

- Default incoming traffic: DENY
- Default outgoing traffic: ALLOW
- SSH: Port 22 allowed
- Nextcloud: Port 8080 allowed
- MariaDB: Internal Docker network only

## Automation and Maintenance

The project includes three Bash scripts:

| Script | Purpose |
|---|---|
| `backup.sh` | Creates MariaDB database backups. |
| `backup-nextcloud.sh` | Creates backups of Nextcloud data and configuration. |
| `health-check.sh` | Monitors Docker containers, disk space, memory, and Docker service status. |

### Cron Schedule

| Schedule | Task |
|---|---|
| 2:00 AM | Database backup |
| 2:05 AM | Nextcloud files backup |
| 2:10 AM | System health check |

All scheduled tasks use the Asia/Manila timezone.

## Architecture Diagram

The infrastructure architecture diagram is included in the `architecture` and `screenshots` folders.

## Project Structure

```text
Laboratory-10-Enterprise-Cloud-Architect/
│
├── README.md
├── architecture/
│   └── cloudnova-architecture.drawio
├── deployment/
│   └── docker-compose.yml
├── security/
│   └── firewall-configuration.md
├── automation/
│   ├── backup.sh
│   ├── backup-nextcloud.sh
│   └── health-check.sh
├── documentation/
│   ├── operational-manual.md
│   └── reflection.md
└── screenshots/
    └── cloudnova-architecture.png
```

## Skills Learned

- Linux server administration
- Docker container management
- Docker Compose deployment
- Database management
- Firewall configuration
- Bash scripting
- Cron job scheduling
- Private cloud infrastructure design
- Technical documentation

## Conclusion

Through this activity, I gained practical experience in designing and managing a private cloud infrastructure. I learned how to deploy connected containers, configure persistent storage, secure a server, and automate backups and system monitoring using Linux tools.

This project demonstrates the importance of reliability, security, automation, and proper documentation in enterprise cloud infrastructure management.

**Project:** CloudNova Technologies – Mission 10  
**Course:** Cloud Computing
