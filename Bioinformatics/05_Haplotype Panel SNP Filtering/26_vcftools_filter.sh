#!/usr/bin/bash

module load vcftools

vcftools --vcf /fs/ess/PUOM0007/filter/30xSamples_nosex_exclvar.vcf --max-missing-count 2 --recode --recode-INFO-all --out /fs/ess/PUOM0007/filter/30xSamples_nosex_filtered
