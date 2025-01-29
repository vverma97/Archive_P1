#!/bin/bash

#ask for decimal
read -p "Enter decimal number: " decimal

#check less than 100,000 and valid number
if ! [[ "$decimal" =~ ^[0-9]+$ ]] || [ "$decimal" -ge 100000 ]; then
    echo "Enter valid number smaller than 100,000"
    exit 1
fi

#hexadecimal conversion
hexad=$(printf '%X\n' "$decimal")

#binary conversion
bind=$(echo "obase=2; $decimal" | bc)

#Output File
output_file="conversion_result.txt"

#Output
echo "Decimal: $decimal" > "$output_file"
echo "Hexadecimal: $hexad" >> "$output_file"
echo "Binary: $bind" >> "$output_file"
