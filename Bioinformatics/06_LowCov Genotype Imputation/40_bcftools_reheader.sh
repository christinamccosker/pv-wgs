#!/usr/bin/bash

module load bcftools/1.16

while read in
do
while read reg
do
bcftools reheader --fai /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta.fai -o /fs/ess/PUOM0007/beaglereheader/Sample_${in}_${reg}_imputed_rehead.vcf.gz /fs/ess/PUOM0007/beagle/Sample_${in}_${reg}_imputed.vcf.gz
done < chromosome_names.txt
done < allsamples.txt
