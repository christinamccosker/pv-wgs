#!/usr/bin/bash

module load htslib
module load bcftools

for i in /fs/ess/PUOM0007/plinkk/*.vcf
do
bgzip $i
bcftools index $i.gz
done
