#!/bin/bash
sudo adduser student
name=$(date "+%Y-%m-%d %H:%M")
nname=$(df / | grep / | awk '{print $5}' | tr -d '%')
cat /etc/passwd | grep student
echo "[$name] пользователь student создан"
if [ $nname -gt 80 ]; then
echo "[$name] внимание! диск заполнен на $nname%"
else 
echo "[$name] диск в норме: $nname"
fi
sudo deluser --remove-home student
echo "[$name] пользователь student удален"


