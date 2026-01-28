#!/usr/bin/bash

cd /fs/scratch/PUOM0007/merged_markdup_bam/

module load samtools

while read i;
do
while read j k;
do
echo $i
echo $j
samtools depth -a -r $j Sample_${i}.bam | awk -v k=$k '{sum+=$3} END { print "Average = ",sum/k}'
done < /fs/ess/PUOM0007/scripts_chromosome/chromosome_length.txt
done < /fs/ess/PUOM0007/scripts_chromosome/HighCovSamples.txt
