#!/bin/bash

hosts_file="hosts.txt"
output_dir="vulners_reports"

mkdir -p "$output_dir"

while read -r host; do
    output_file="$output_dir/${host//./_}.xml"
    nmap -sV -Pn "$host" --script=vulners/vulners.nse -oX "$output_file"
done < "$hosts_file"
