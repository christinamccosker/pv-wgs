#!/usr/bin/bash

module load bcftools/1.16

while read sample
do
bcftools index -f /fs/ess/PUOM0007/gatherbeaglevcf/Sample_${sample}_imputed.vcf.gz
done < /fs/ess/PUOM0007/scripts_chromosome/textfiles/allsamples.txt
