#!/usr/bin/bash

cd /fs/ess/PUOM0007/cds_read/

module load samtools

samtools faidx -r cds_position /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta > cds_ref_seq.fasta

grep 'HiC_scaffold_3_75149504' /fs/ess/PUOM0007/plinkk/allsamples_maf_prune.vcf > cds_vcf_record.txt
