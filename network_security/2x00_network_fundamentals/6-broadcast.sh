#!/bin/bash
IFS=. read -r -a ip <<< "$1"; IFS=. read -r -a mask <<< "$2"; for i in {0..3}; do printf "%d" $(( (ip[$i] & mask[$i]) | (255 ^ mask[$i]) )); [ $i -lt 3 ] && printf "."; done
