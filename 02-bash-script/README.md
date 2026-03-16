# Bash System Utility Tool

This script provides a simple interactive Bash utility with the following features:

## Features
- System health monitoring (CPU, memory, disk usage, uptime)
- Directory backup with timestamped `.tar.gz` archives
- Interactive menu interface

## Usage

Run the script:
./system_tool.sh

Choose from the menu:
1. System Health Report
2. Backup a Directory
3. Exit

## Backup Behavior
Backups are stored inside a 'backups/' folder with filenames like:
Desktop-backup-YYYY-MM-DD.tar.gz
