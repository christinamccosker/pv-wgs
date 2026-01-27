#!/usr/bin/bash

module load samtools

for i in /fs/scratch/PUOM0007/bwa/*.bam
do
  samtools flagstat $i -O tsv
done
