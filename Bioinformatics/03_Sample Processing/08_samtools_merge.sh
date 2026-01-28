#!/usr/bin/bash

module load samtools

while read -r i j
do
  samtools merge /fs/scratch/PUOM0007/merged_markdup_bam/Sample_${i}.bam /fs/scratch/PUOM0007/MarkDup/*${j//[$'\t\r\n']}*.bam
done < samplekey.txt
