#!/bin/bash
processId=$(ps aux | less | grep "armed.sh" | grep -E -o "\s[0-9]+\s" | head -1);
if [ -z "$processId" ]
then
    echo "No running process found";
else
    kill $processId;
fi