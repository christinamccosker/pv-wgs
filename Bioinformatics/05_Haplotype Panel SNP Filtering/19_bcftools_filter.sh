#!/usr/bin/bash

module load bcftools

bcftools filter -g 5 --output /fs/ess/PUOM0007/filter/30xSamples_nosex_indel5bp.vcf /fs/ess/PUOM0007/GenotypeGVCFs/30xSamples_Genotype_nosex.vcf.gz
