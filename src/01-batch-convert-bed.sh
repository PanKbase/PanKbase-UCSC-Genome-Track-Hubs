#!/bin/bash

wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/A_Stellate_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Acinar_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Alpha_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Beta_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Delta_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Ductal_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Endothelial_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Gamma_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Immune_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/MUC5B_Ductal_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Q_Stellate_union_overlap_calledpeak.sorted.bed.gz
wget https://s3-us-west-2.amazonaws.com/gaulton-lab-ucsc/rlmelton/washu_epigenome_browser_hpap/Schwann_union_overlap_calledpeak.sorted.bed.gz

# Unzip all files
gunzip *.bed.gz

# Convert all files
bash bed_to_bigbed.sh A_Stellate_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Acinar_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Alpha_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Beta_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Delta_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Ductal_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Endothelial_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Gamma_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Immune_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh MUC5B_Ductal_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Q_Stellate_union_overlap_calledpeak.sorted.bed hg38
bash bed_to_bigbed.sh Schwann_union_overlap_calledpeak.sorted.bed hg38

echo "All files converted to bigBed format"
ls -la *.bigBed