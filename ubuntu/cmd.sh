#!/bin/bash

nengcoind -daemon
sleep 30
cd  ~/cheetah_cpuminer-1.3.0
./cheetah.sh
sleep infinity
