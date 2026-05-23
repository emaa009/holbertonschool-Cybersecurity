#!/bin/bash
mask=$((0xFFFFFFFF << (32 - $1))); for i in {3..0}; do printf "%d" $(( (mask >> (i * 8)) & 255 )); [ $i -gt 0 ] && printf "."; done; echo ""
