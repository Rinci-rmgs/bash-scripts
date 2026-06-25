#!/bin/bash
Mname=$(date "+%Y-%m-%d %H:%M")
name=$(ps aux | grep rinci| grep -v grep | wc -l)
log() {
echo "[$Mname] $1!"
}
log "процессов $name"
if [ $name -gt 5 ]; then
log "процессов много"
else
log "процессов нормально"
fi

