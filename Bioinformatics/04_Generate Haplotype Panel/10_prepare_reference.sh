#!/usr/bin/bash

module load java
module load picard
module load samtools

java -jar $PICARD CreateSequenceDictionary R=/fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta O=/fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.dict
samtools faidx /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta
