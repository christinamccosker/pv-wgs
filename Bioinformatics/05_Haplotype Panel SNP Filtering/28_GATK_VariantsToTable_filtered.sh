#!/usr/bin/bash

module load gatk
module load java

gatk VariantsToTable \
-V /fs/ess/PUOM0007/filter/30xSamples_nosex_filtered.recode.vcf \
-F TYPE -F CHROM -F POS -F FILTER \
-F QD -F FS -F SOR -F MQ -F MQRankSum -F ReadPosRankSum \
--show-filtered \
--GF GQ \
-O /fs/ess/PUOM0007/filter/30xSamples_nosex_filtered.recode.table
