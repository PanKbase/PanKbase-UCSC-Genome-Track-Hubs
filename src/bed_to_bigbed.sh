#!/bin/bash

# BED to bigBed conversion script
# Usage: ./convert_bed.sh input.bed hg38

INPUT_BED=$1
GENOME=$2
OUTPUT_BB="${INPUT_BED%.bed}.bigBed"

# Download tools if not available
#wget -q http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bedToBigBed
#wget -q http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/fetchChromSizes
#chmod +x bedToBigBed fetchChromSizes

# Get chromosome sizes
./fetchChromSizes $GENOME > ${GENOME}.chrom.sizes

# Sort BED file
sort -k1,1 -k2,2n $INPUT_BED > temp_sorted.bed

# Convert to bigBed
./bedToBigBed temp_sorted.bed ${GENOME}.chrom.sizes $OUTPUT_BB

# Clean up
rm temp_sorted.bed ${GENOME}.chrom.sizes

echo "Created: $OUTPUT_BB"