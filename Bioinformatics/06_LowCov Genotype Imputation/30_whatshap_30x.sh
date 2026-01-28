#!/usr/bin/bash

module load miniconda3
source activate whatshap_shapeit

whatshap phase -o /fs/ess/PUOM0007/whatshap/30xSamples_phased.vcf --tag=PS --reference=/fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC.fasta /fs/ess/PUOM0007/filter/30xSamples_nosex_filtered.recode.vcf /fs/scratch/PUOM0007/merged_markdup_bam/Sample_1.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_2.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_3.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_4.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_5.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_6.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_7.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_8.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_9.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_10.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_51.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_52.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_53.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_54.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_56.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_58.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_59.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_63.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_72.bam /fs/scratch/PUOM0007/merged_markdup_bam/Sample_104.bam

conda deactivate
