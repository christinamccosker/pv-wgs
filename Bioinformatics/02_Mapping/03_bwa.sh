#!/usr/bin/bash

module load bwa
module load samtools

for s in {1..65}
do
cd /fs/scratch/PUOM0007/sample_reads/Sample_${s}/
for i in $(ls *fq.gz | rev | cut -c 9- | rev | uniq)
do
bwa mem -t12 /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta.gz ${i}_1.fq.gz ${i}_2.fq.gz| samtools view -bS - > /fs/scratch/PUOM0007/bwa/${i}.bwa.sam.bam
done
done

for s in {67..77}
do
cd /fs/scratch/PUOM0007/sample_reads/Sample_${s}/
for i in $(ls *fq.gz | rev | cut -c 9- | rev | uniq)
do
bwa mem -t12 /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta.gz ${i}_1.fq.gz ${i}_2.fq.gz| samtools view -bS - > /fs/scratch/PUOM0007/bwa/${i}.bwa.sam.bam
done
done

for s in {79..109}
do
cd /fs/scratch/PUOM0007/sample_reads/Sample_${s}/
for i in $(ls *fq.gz | rev | cut -c 9- | rev | uniq)
do
bwa mem -t12 /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta.gz ${i}_1.fq.gz ${i}_2.fq.gz| samtools view -bS - > /fs/scratch/PUOM0007/bwa/${i}.bwa.sam.bam
done
done
