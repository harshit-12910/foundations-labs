#!/bin/bash

#Author: Harshit Kaushik
# Description: System monitoring and backup automation tool written in Bash.


# Displays system information including uptime, CPU usage,
# memory usage, disk usage, and top memory-consuming processes.

system_health() {
echo "============================="
echo "== System Health Report =="
echo
echo "Date: $(date)"
echo "User: $USER"
uptime=$(uptime -p | sed 's/^up //')
echo "Uptime: $uptime"
echo
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
echo "CPU Usage: $CPU"
MEM=$(free | awk '/Mem:/ {printf "%.2f%%", $3/$2 * 100}')
echo "Memory Usage: $MEM"
DISK=$(df -h / | awk 'NR==2 {print $5}')
echo "DISK Usage: $DISK"
FREE=$(free -h | awk 'NR==2 {print $7}')
echo "Available Memory: $FREE"
     echo "--- Top 5 Memory-Consuming Processes ---"
     ps -eo pid,user,%mem,comm --sort=-%mem | head -n 6
     echo "Report generated successfully."
echo "============================="

}


# Creates a compressed backup (.tar.gz) of a user-specified directory.
# Stores backups inside a backups folder and prevents accidental overwrites.

backingup() {
echo "============================="
echo "== Back Up a Directory =="
echo "Enter a Directory Name:"

read -r TARGET_DIR

if [ -d "$TARGET_DIR" ];
then
  DIR_NAME=$(basename "$TARGET_DIR")
  mkdir -p backups
  BACKUP_NAME="backups/${DIR_NAME}-backup_$(date +%F).tar.gz"
  if [ -f "$BACKUP_NAME" ];
  then
    echo "Backup already exists for today."
    echo "Overwrite? (y/n)"
    read answer
      if [[ "$answer" == "y" || "$answer" == "Y" ]];
      then
         echo "Backing up $TARGET_DIR to $BACKUP_NAME..."
         tar -czf "$BACKUP_NAME" "$TARGET_DIR"
         echo
         echo "Backup Complete!"
      else
        return
      fi
  else
   echo "Backing up $TARGET_DIR to $BACKUP_NAME..."
   tar -czf "$BACKUP_NAME" "$TARGET_DIR"
   echo
   echo "Backup Complete!"
  fi
else
  echo "Error: '$TARGET_DIR' does not exist!"
fi
echo "============================="

}

while true; do
  echo "What would you like to do?"

  echo "1 - System Health Report"
  echo "2 - Backup A Directory"
  echo "3 - Exit"

  read choice;

  case $choice in
    1) system_health;;

    2) backingup;;

    3) echo "Exit"
       exit 0;;
    *) echo "Invalid Option, Try again."
  esac
done
