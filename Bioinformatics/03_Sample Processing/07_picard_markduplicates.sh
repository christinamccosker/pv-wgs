#!/usr/bin/bashS

module load java
module load picard

for i in /fs/scratch/PUOM0007/RG/*.bwa.sam.bam.sorted.bam.rg.bam
do
  filename=$(echo $i | cut -c 25- | rev | cut -c 31- | rev | uniq)
  java -jar $PICARD MarkDuplicates \
  VALIDATION_STRINGENCY=LENIENT \
  TMP_DIR=$TMPDIR \
  I=$i \
  O=/fs/scratch/PUOM0007/MarkDup/${filename}.marked_duplicates.bam \
  M=/fs/scratch/PUOM0007/MarkDup/${filename}.marked_dup_metrics.txt \
  READ_NAME_REGEX=null
done
