#!/usr/bin/bash

module load bcftools

bcftools view -m 2 -M 2 -v snps -o /fs/ess/PUOM0007/filter/30xSamples_nosex_biallelic.vcf /fs/ess/PUOM0007/filter/30xSamples_nosex_indel5bp.vcf
