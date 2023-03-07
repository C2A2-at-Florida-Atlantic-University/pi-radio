#!/bin/bash -x
# Jared Hermans

# This script replaces the fixed path XILINX requires for some
# files with the fixed path of YOUR project location

# You must set environment variable PI_RADIO_REPO_PATH to the 
# location you have cloned this repo

# If on windows, run with git cmd (MINGW)

set +x
echo "Environment Setup Script - set PI_RADIO_REPO_PATH env variable first"
echo Your repo path: $PI_RADIO_REPO_PATH

cd HW/bd
set -x
sed -i "s|c:/Projects/pi-radio|$PI_RADIO_REPO_PATH|g" *
