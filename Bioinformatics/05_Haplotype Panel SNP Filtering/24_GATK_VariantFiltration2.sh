#!/usr/bin/bash

module load java
module load gatk

gatk VariantFiltration \
-V /fs/ess/PUOM0007/filter/30xSamples_nosex_biallelic.vcf \
-O /fs/ess/PUOM0007/filter/30xSamples_nosex_hardfilter2.vcf \
-filter "QD < 2.0" --filter-name "QD2" \
-filter "SOR > 3.0" --filter-name "SOR3" \
-filter "FS > 60.0" --filter-name "FS60" \
-filter "MQ < 40.0" --filter-name "MQ40" \
-filter "MQRankSum < -12.5" --filter-name "MQRankSum-12.5" \
-filter "MQRankSum > 12.5" --filter-name "MQRankSum12.5" \
-filter "ReadPosRankSum < -8.0" --filter-name "ReadPosRankSum-8" \
-filter "ReadPosRankSum > 8.0" --filter-name "ReadPosRankSum8" \
--tmp-dir $TMPDIR
