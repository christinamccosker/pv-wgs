#!/usr/bin/bash

module load java
module load gatk


while read sample
do
gatk --java-options "-Xmx8g" GatherVcfs \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_1_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_2_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_3_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_4_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_5_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_6_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_7_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_8_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_9_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_10_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_11_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_12_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_13_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_14_*.vcf.gz \
  --INPUT /fs/ess/PUOM0007/beaglereheader/Sample_${sample}_*_16_*.vcf.gz \
  --OUTPUT /fs/ess/PUOM0007/gatherbeaglevcf/Sample_${sample}_imputed.vcf.gz \
  --TMP_DIR $TMPDIR
done < /fs/ess/PUOM0007/scripts_chromosome/textfiles/allsamples.txt
