#!/usr/bin/bash

module load bcftools/1.16

while read in
do
while read reg
do
bcftools mpileup -Ov -r $reg -f /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta /fs/scratch/PUOM0007/Analysis_Chromosome/merged_markdup_bam/Sample_${in}.bam > /fs/scratch/PUOM0007/Analysis_Chromosome/pileup/Sample_${in}_${reg}_pileup.vcf
done < chromosome_names.txt
done < LowCovSamples.txt
