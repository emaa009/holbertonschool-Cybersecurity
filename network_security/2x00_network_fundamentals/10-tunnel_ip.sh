#!/bin/bash
ip addr show dev tun0 2>/dev/null | awk '/inet / {print $2}' | cut -d/ -f1 | tr -d '\n'
