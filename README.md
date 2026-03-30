# Linux Scripts

**Student Name:** Reet Dubey  
**Registration Number:** 24BAI10232  
**Software Chosen:** Linux Kernel  

This repository contains 5 Linux shell scripts created using Ubuntu on Windows Subsystem for Linux (WSL). These scripts demonstrate basic Linux commands and shell scripting concepts.

---

## Scripts

### script1.sh — System Identity Report
Displays system information such as kernel version, current user, home directory, uptime, date, Linux distribution, and license.

### script2.sh — FOSS Package Inspector
Checks whether a package is installed and displays its version, maintainer, and description. Uses a case statement to describe packages.

### script3.sh — Disk and Permission Auditor
Analyzes important system directories and displays their permissions, ownership, and disk usage.

### script4.sh — Log File Analyzer
Reads a log file, counts occurrences of a keyword (default: "error"), and displays the last 5 matching lines.

### script5.sh — Open Source Manifesto Generator
Takes user input and generates a personalized open-source philosophy statement saved in a text file.

---

## Dependencies:
- bash
- coreutils
- grep
- awk
- WSL (Ubuntu)

## How to Run

1. Open terminal in Linux / WSL  
2. Navigate to the repository folder:

```bash
cd linux-scripts
```

3. Give execution permission:

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

4. Run scripts:

```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh /var/log/syslog error
./script5.sh
```
