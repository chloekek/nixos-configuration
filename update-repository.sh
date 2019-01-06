#!/usr/bin/env bash

set -o errexit nounset pipefail

MACHINES=(chloe-notebook)

for machine in "${MACHINES[@]}"; do
	global="/etc/nixos/$machine"
	if [[ -d "$global" ]]; then
		rm -rf "$machine"
		cp -vR "$global" "$machine"
	fi	
done
