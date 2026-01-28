#!/usr/bin/bash

module load samtools

for i in /fs/scratch/PUOM0007/bwa/*.sam.bam
do
samtools view -H $i | grep -P '^@SQ' | cut -f 3 -d ':' | awk '{sum+=$1} END {print sum}'
done
