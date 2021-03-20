#!/bin/bash

#Define cleanup procedure
cleanup() {
    nengcoind backupwallet /root/host
}

#Trap SIGTERM
trap 'cleanup' SIGTERM

#Execute a command
"${@}" &

#Wait
wait $!