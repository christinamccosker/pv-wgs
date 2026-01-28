#!/usr/bin/bash

module load bcftools

for i in /fs/ess/PUOM0007/filter/*.vcf
do
bcftools stats $i | grep 'ID	\|SN'
done

for i in /fs/ess/PUOM0007/GenotypeGVCFs/*.vcf
do
bcftools stats $i | grep 'ID	\|SN'
done

for i in /fs/ess/PUOM0007/GenotypeGVCFs/*.vcf.gz
do
bcftools stats $i | grep 'ID	\|SN'
done
