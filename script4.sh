
#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0
#check for given number of attempts if file is empty and keep retrying
ATTEMPTS=0
MAX_ATTEMPTS=3
while [ ! -s "$LOGFILE" ] && [ $ATTEMPTS -lt $MAX_ATTEMPTS ]; do
    echo "File is empty. Retrying in 3 seconds."
    sleep 3
    ATTEMPTS=$((ATTEMPTS + 1))
done
#if file is still empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is still empty after $MAX_ATTEMPTS attempts."
    exit 1
fi
#count occurrences of keywords
while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
 COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
#shows last 5 matching lines
echo "Last 5 matching lines are - "
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

