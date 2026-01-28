#!/usr/bin/bash

module load java
module load gatk

gatk SelectVariants \
-V /fs/ess/PUOM0007/filter/30xSamples_nosex_hardfilter2.vcf \
--exclude-filtered true \
-O /fs/ess/PUOM0007/filter/30xSamples_nosex_exclvar.vcf
