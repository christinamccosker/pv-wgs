#!/usr/bin/bash

cd /fs/scratch/PUOM0007/bwa/

module load samtools

for i in *.bwa.sam.bam
do
  samtools sort $i -T /fs/scratch/PUOM0007/ -@ 8 -O BAM -o ${i}.sorted.bam
done
