#!/usr/bin/bash

module load bcftools/1.16

while read reg
do
bcftools reheader -s /fs/ess/PUOM0007/scripts_chromosome/reheader.txt -o /fs/ess/PUOM0007/shapeit4/30xSamples_${reg}_reheader.vcf.gz /fs/ess/PUOM0007/shapeit4/30xSamples_${reg}.vcf.gz
done < chromosome_names.txt
