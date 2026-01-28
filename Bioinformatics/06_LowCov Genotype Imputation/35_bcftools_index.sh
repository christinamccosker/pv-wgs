#!/usr/bin/bash

module load bcftools/1.16

while read in
do
while read reg
do
bcftools index /fs/scratch/PUOM0007/Analysis_Chromosome/pileup/Sample_${in}_${reg}_pileup.vcf.gz
done < chromosome_names.txt
done < HighCovSamples.txt

while read in
do
while read reg
do
bcftools index /fs/scratch/PUOM0007/Analysis_Chromosome/pileup/Sample_${in}_${reg}_pileup.vcf.gz
done < chromosome_names.txt
done < LowCovSamples.txt
