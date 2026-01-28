#!/usr/bin/bash

cd /fs/scratch/PUOM0007/merged_markdup_bam/

module load java
module load gatk

while read line
do
  gatk --java-options "-Xmx15g" HaplotypeCaller \
  --reference /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta \
  --input Sample_${line}.bam \
  --output /fs/scratch/PUOM0007/haplotypecall/Sample_${line}_1.g.vcf.gz \
  --emit-ref-confidence GVCF \
  --pcr-indel-model NONE \
  --intervals /fs/ess/PUOM0007/pv_chrom_refgenome/chromosomes_1.list \
  --tmp-dir $TMPDIR
done < HighCovsamples.txt
