
#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0
#check if the file exists
if [ ! -f "$LOGFILE" ]; then
 echo "Error: File $LOGFILE not found."
 exit 1
fi
#count occurrences of keywords
while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
 COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
#check if file is empty and retry
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Retrying in 3 seconds."
    sleep 3
fi
#shows last 5 matching lines
echo "Last 5 matching lines are - "
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

