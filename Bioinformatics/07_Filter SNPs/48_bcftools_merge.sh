#!/usr/bin/bash

module load htslib
module load bcftools

cd /fs/ess/PUOM0007/isec/allsamples/

for i in /fs/ess/PUOM0007/isec/allsamples/*.vcf
do
bgzip $i
bcftools index $i.gz
done

bcftools merge *.vcf.gz -o allsamples.vcf

bcftools stats allsamples.vcf | grep 'ID \|SN' > allsamples_stats.txt
