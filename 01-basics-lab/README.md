# Linux Command Line Essentials


This lab demonstrates core Linux command-line skills, executed and documented as part of my cybersecurity and systems fundamentals practice. 
Each section includes verified commands, definitions, and screenshots of real execution in a Linux (WSL2) environment.

---


## 🧠 Objective
Gain practical, hands-on familiarity with essential Linux commands, the kind used daily by sysadmins, analysts, and ethical hackers. 
The focus is on navigation, file handling, permissions, processes, networking, and package management.

---

## 🧭 Command Categories

### 1. Navigation
- `pwd` — show current working directory 
- `ls` — list all files (detailed view) 
- `cd` — move between directories 
- `cat`, `head`, `tail` — display file contents 

---

### 2. File & Directory Management
- `mkdir` — create directory 
- `touch` — create empty file 
- `cp`, `mv`, `rm` — copy, move/rename, delete files 

---

### 3. Permissions & Ownership
- `chmod` — modify read/write/execute permissions 
- `chown` — change file owner and group 
- `sudo` — execute commands as root/admin 

---

### 4. System Information & Processes
- `whoami` — show current user 
- `uname -a` — kernel and OS details 
- `ps aux` — list running processes 
- `top` — real-time process monitor 
- `df -h` — disk space usage 
- `free -h` — memory usage 

---

### 5. Networking Commands
- `ip addr` / `ifconfig` — show network interfaces 
- `ping` — test connectivity 
- `curl`, `wget` — check URL reachability 
- `netstat -tuln` — list active network ports 

I chose not to upload raw networking screenshots (e.g. `ip addr`, `ifconfig`, `netstat`) in this public repository for privacy and OPSEC reasons. These commands can expose hostnames, private IPs, MAC addresses, mounted drives, and process metadata that may identify personal systems.

---

### 6. Package Management & Help
- `apt update`, `apt install` — manage software packages 
- `which` — locate a command’s executable 
- `man` — read manual pages 
- `history` — list recent commands 

---

### 7. Searching & Filtering
- `grep` — search within files 
- `find` — locate files by name/type 
- `locate` — quickly search indexed files 

---

## 🧾 Evidence
Each command was executed and verified in WSL2 (Ubuntu 22.04). 
Screenshots are stored in the `evidence/screenshots/` directory

---

## ⚙️ Environment
- **OS:** Ubuntu (via WSL2) 
- **Editor:** Visual Studio Code 
- **Tools:** Bash, Git 

---

## ✅ Outcome
This exercise demonstrates working proficiency in:
- Linux file system navigation 
- Process and permission management 
- Basic networking and diagnostics 
- Package installation and help systems 

---

**Next Step:** Moving on to *Networking Fundamentals* (Lab 02), covering OSI/TCP models, DNS, ports, and Wireshark basics.
