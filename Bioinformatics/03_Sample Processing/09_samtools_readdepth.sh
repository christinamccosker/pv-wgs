#!/usr/bin/bash

cd /fs/scratch/PUOM0007/merged_markdup_bam/

module load samtools

for i in {1..109}
do
echo Sample_${i}
samtools depth -a Sample_${i}.bam  |  awk '{sum+=$3} END { print "Average = ",sum/2363280482}'
done
