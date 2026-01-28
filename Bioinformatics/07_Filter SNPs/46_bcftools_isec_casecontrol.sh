#!/usr/bin/bash

module load bcftools

cd /fs/ess/PUOM0007/plinkk

bcftools isec -p /fs/ess/PUOM0007/isec/allsamples -n=2 -c all cases_hwe.vcf.gz controls_hwe.vcf.gz
