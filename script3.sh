#!/bin/bash
# Script 3: Disk and Permission Auditor
#list of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "----------------------"
for DIR in "${DIRS[@]}"; do
#checking if directories exist or not
 if [ -d "$DIR" ]; then
   #display its permissions and size
   PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
   SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
   echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
   echo "$DIR does not exist on this system"
 fi
done
#checking configuration directory exists
CONFIG_DIRECTORY="/lib/modules"
if [ -d "$CONFIG_DIRECTORY" ]; then
   #display its permissions
   PERMS=$(ls -ld $CONFIG_DIRECTORY | awk '{print $1, $3, $4}')
   echo "$CONFIG_DIRECTORY => Permissions: $PERMS"
else
   echo "$CONFIG_DIRECTORY does not exist on this system"
fi
