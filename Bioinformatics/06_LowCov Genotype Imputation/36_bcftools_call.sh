#!/usr/bin/bash

module load bcftools/1.16

while read in
do
while read reg
do
bcftools call -Ov -m -r $reg -o /fs/scratch/PUOM0007/Analysis_Chromosome/variantcalls/Sample_${in}_${reg}_called.vcf.gz /fs/scratch/PUOM0007/Analysis_Chromosome/pileup/Sample_${in}_${reg}_pileup.vcf.gz
done < chromosome_names.txt
done < HighCovSamples.txt

while read in
do
while read reg
do
bcftools call -Ov -m -r $reg -o /fs/scratch/PUOM0007/Analysis_Chromosome/variantcalls/Sample_${in}_${reg}_called.vcf.gz /fs/scratch/PUOM0007/Analysis_Chromosome/pileup/Sample_${in}_${reg}_pileup.vcf.gz
done < chromosome_names.txt
done < LowCovSamples.txt
