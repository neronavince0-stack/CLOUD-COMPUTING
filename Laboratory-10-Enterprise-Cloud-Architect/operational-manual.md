
# CloudNova Private Cloud – Operational Manual

## 1. System Overview

CloudNova Private Cloud is a self-hosted cloud storage system deployed using Ubuntu Server, Docker, Docker Compose, Nextcloud, and MariaDB.

The system allows users to access private cloud storage through a web browser.

## 2. Accessing the System

1. Start the Ubuntu Server virtual machine in VirtualBox.
2. Log in using the Ubuntu server account.
3. Make sure Docker is running.
4. Open a web browser on the host computer.
5. Visit:

`http://localhost:8080`

## 3. Managing Docker Containers

Navigate to the project directory:

```bash
cd ~/cloudnova-private-cloud
```

Check running containers:

```bash
docker compose ps
```

Start the application:

```bash
docker compose up -d
```

Stop the application:

```bash
docker compose stop
```

Restart the application:

```bash
docker compose restart
```

View container logs:

```bash
docker compose logs
```

## 4. Backup Operations

The system uses automated Bash scripts to back up the database and Nextcloud files.

Run database backup manually:

```bash
./backup.sh
```

Run Nextcloud files backup manually:

```bash
./backup-nextcloud.sh
```

Backup files are stored in:

```text
~/cloudnova-private-cloud/backups/
```

## 5. System Health Monitoring

Run the health-check script:

```bash
./health-check.sh
```

The script checks:

- Docker container status
- Disk space
- Memory usage
- Docker service status
- Current date and time

View the health-check log:

```bash
tail -20 health-check.log
```

## 6. Scheduled Tasks

Cron automatically runs the following tasks using the Asia/Manila timezone:

| Time | Task |
|---|---|
| 2:00 AM | Database backup |
| 2:05 AM | Nextcloud files backup |
| 2:10 AM | Health check |

View scheduled tasks:

```bash
crontab -l
```

## 7. Firewall Management

Check UFW firewall status:

```bash
sudo ufw status verbose
```

The configured firewall allows SSH on port 22 and Nextcloud access on port 8080. Incoming connections are denied by default.

## 8. Troubleshooting

**Problem: Nextcloud cannot be accessed**

- Check whether the Ubuntu VM is running.
- Check Docker containers using `docker compose ps`.
- Restart the containers if necessary.

**Problem: Database container is not running**

Check its logs:

```bash
docker logs cloudnova-database
```

**Problem: Nextcloud container is not running**

Check its logs:

```bash
docker logs cloudnova-nextcloud
```

**Problem: Backup script fails**

- Check Docker container status.
- Check available disk space.
- Verify that the backup directory exists.
- Check script permissions.

## 9. Important Notes

- Do not delete Docker persistent volumes unless intentionally removing application data.
- Keep backup files in a secure location.
- Never publish database passwords or private credentials.
- Regularly verify that automated backups are successful.

## 10. Conclusion

This operational manual provides the basic procedures for accessing, managing, monitoring, and maintaining the CloudNova Private Cloud infrastructure.
