#!/usr/bin/bash

cd /fs/scratch/PUOM0007/merged_markdup_bam/

module load samtools

for i in {1..109}
do
  samtools index Sample_${i}.bam
done
