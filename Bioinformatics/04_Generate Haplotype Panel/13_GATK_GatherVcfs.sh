#!/usr/bin/bash

module load java
module load gatk

while read line
do
  gatk --java-options "-Xmx8g" GatherVcfs \
  $(for file in /fs/scratch/PUOM0007/haplotypecall/Sample_${line}_*.g.vcf.gz;do echo "--INPUT ${file}";done) \
  --OUTPUT /fs/ess/PUOM0007/gathervcf/Sample_${line}_all.g.vcf.gz \
  --TMP_DIR $TMPDIR
Done < HighCovSamples.txt
