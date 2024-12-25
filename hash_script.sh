#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <digit-integer>"
	exit 1
fi

INPUT=$1

if ! [[ "$INPUT" =~ ^[0-9]{4}$ ]]; then
	echo "Error: Input must be a 4-digit integer."
	exit 1
fi

HASH=$(echo -n "$INPUT" | sha256sum | awk '{print $1}')

echo "$HASH"
