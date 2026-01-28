#!/usr/bin/bash

module load java
module load gatk

gatk --java-options "-Xmx15g" GenotypeGVCFs \
-R /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta \
-V /fs/ess/PUOM0007/CombineGVCFs/30xSamples.g.vcf.gz \
-O /fs/ess/PUOM0007/GenotypeGVCFs/30xSamples_Genotype.vcf.gz \
--tmp-dir $TMPDIR
