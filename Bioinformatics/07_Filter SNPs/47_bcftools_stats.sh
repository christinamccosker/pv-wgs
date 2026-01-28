#!/usr/bin/bash

module load bcftools

for i in /fs/ess/PUOM0007/isec/allsamples/*.vcf
  do
  bcftools stats $i | grep 'ID	\|SN'
done > /fs/ess/PUOM0007/isec/allsamples/isec_stats.txt
