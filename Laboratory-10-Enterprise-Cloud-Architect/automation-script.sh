#!/bin/bash

# CloudNova Private Cloud Automation Script

BACKUP_DIR="$HOME/cloudnova-private-cloud/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

echo "======================================"
echo " CLOUDNOVA AUTOMATION SCRIPT"
echo "======================================"

echo ""
echo "[1] Running database backup..."
"$HOME/cloudnova-private-cloud/backup.sh"

echo ""
echo "[2] Running Nextcloud files backup..."
"$HOME/cloudnova-private-cloud/backup-nextcloud.sh"

echo ""
echo "[3] Running system health check..."
"$HOME/cloudnova-private-cloud/health-check.sh"

echo ""
echo "======================================"
echo " AUTOMATION COMPLETED"
echo "======================================"
