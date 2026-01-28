#!/usr/bin/bash

module load bcftools/1.16

bcftools annotate --set-id +'%CHROM\_%POS' -o /fs/ess/PUOM0007/isec/allsamples/allsamples_id.vcf.gz /fs/ess/PUOM0007/isec/allsamples/allsamples.vcf
