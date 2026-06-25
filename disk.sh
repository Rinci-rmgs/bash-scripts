#!/bin/bash
name=$(df / | grep / | awk '{print $5}' | tr -d '%')
nname=$(date "+%Y-%m-%d %H:%M")
if [ $name -gt 0 ]; then
echo "[$nname] ВНИМАНИЕ! Диск заполнен на $name%"
else
echo "[$nname] Диск в норме: $name%"
fi
