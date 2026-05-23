#!/bin/bash
IFS=. read -r -a ip <<< "$1"; m=$((0xFFFFFFFF << (32 - $2))); for i in {3..0}; do o=$(( (m >> (i * 8)) & 255 )); n=$((ip[3-i] & o)); net+=($n); bco+=($((n | (255 ^ o)))); done; printf "%d.%d.%d.%d - %d.%d.%d.%d" ${net[0]} ${net[1]} ${net[2]} $((net[3] + 1)) ${bco[0]} ${bco[1]} ${bco[2]} $((bco[3] - 1))
