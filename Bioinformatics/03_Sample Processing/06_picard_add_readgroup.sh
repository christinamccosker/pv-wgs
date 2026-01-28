#!/usr/bin/bash

cd /fs/scratch/PUOM0007/bwa/

module load java
module load picard

for i in *.bwa.sam.bam.sorted.bam
do
  RGID=$(echo $i | cut -c 12- | rev | cut -c 43- | rev | uniq)
  RGLB=$(echo $i | cut -c 31- | rev | cut -c 24- | rev | uniq)
  RGPU=$(echo "$RGID-$RGLB")
  RGSM=$(echo $i | cut -c 16- | rev | cut -c 28- | rev | uniq)
  java -jar $PICARD AddOrReplaceReadGroups \
  I=$i \
  O=/fs/scratch/PUOM0007/RG/${i}.rg.bam \
  RGID=$RGID \
  RGLB=$RGLB \
  RGPU=$RGPU \
  RGPL=ILLUMINA \
  RGSM=$RGSM \
  TMP_DIR=/fs/scratch/PUOM0007/
done
