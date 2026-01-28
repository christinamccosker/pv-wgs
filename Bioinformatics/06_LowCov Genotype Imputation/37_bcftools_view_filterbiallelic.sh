#!/usr/bin/bash

module load bcftools/1.16

while read in
do
while read reg
do
bcftools view -m 2 -M 2 -v snps -o /fs/scratch/PUOM0007/Analysis_Chromosome/filtercalls/Sample_${in}_${reg}_filter.vcf.gz /fs/scratch/PUOM0007/Analysis_Chromosome/variantcalls/Sample_${in}_${reg}_called.vcf.gz
done < chromosome_names.txt
done < HighCovSamples.txt
