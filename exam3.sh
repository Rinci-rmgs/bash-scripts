#!/bin/bash
name=$(date "+%Y-%m-%d %H:%M")
if ping -c 3 google.com > /dev/null 2>&1; then
echo "[$name] google.com доступен"
else
echo "[$name] google.com недоступны"
fi
nname=$(curl -o /dev/null -s -w "%{http_code}" www.google.com)
echo "[$name] код ответа:$nname"
