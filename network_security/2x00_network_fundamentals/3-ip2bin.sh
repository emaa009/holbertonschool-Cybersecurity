#!/bin/bash
for i in {1..4}; do printf "%08d" $(echo "obase=2; $(echo $1 | cut -d'.' -f$i)" | bc); [ $i -lt 4 ] && printf "."; done; echo ""
