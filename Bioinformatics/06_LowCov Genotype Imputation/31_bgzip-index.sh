#!/usr/bin/bash

module load bcftools
module load htslib

bgzip -c /fs/ess/PUOM0007/whatshap/30xSamples_phased.vcf > /fs/ess/PUOM0007/whatshap/30xSamples_phased.vcf.gz

bcftools index /fs/ess/PUOM0007/whatshap/30xSamples_phased.vcf.gz
