#!/bin/bash

# Output manifest file
output="plate2_manifest.txt"

# Write header
echo -e "SampleID\tabsolute-filepath\tbarcode" > "$output"

# Loop through all fastq.gz files
for file in plate2_pre-trimmed_raw_fastq_files/*.fastq.gz; do
    # Get absolute path
    abs_path=$(realpath "$file")
    
    # Extract barcode (clean version)
    barcode=$(basename "$file" .fastq.gz | awk -F'.' '{print $NF}')
    
    # Write line (empty SampleID column)
    echo -e "\t$abs_path\t$barcode" >> "$output"
done

echo "Manifest file created: $output"
