#!/usr/bin/bash

module load java
module load gatk

gatk --java-options "-Xmx4g" CombineGVCFs \
-R /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta \
$(while read line; do printf "%s--variant /fs/ess/PUOM0007/gathervcf/Sample_${line}_all.g.vcf.gz \n";done < z_30xsamples.txt) \
-O /fs/ess/PUOM0007/CombineGVCFs/30xSamples.g.vcf.gz
