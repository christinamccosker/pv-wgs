#!/usr/bin/bash

cd /fs/ess/PUOM0007/snp_id

module load bedtools

awk -v OFS="\t" '{print $1, $2-1, $2}' allsamples_fst_sd_outlierposition > allsamples_fst_sd_outlierposition.bed


bedtools intersect -a /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC_genes.gff3 -b allsamples_fst_sd_outlierposition.bed -wb > allsamples_fst_sd_outlier_genes_snps.txt

bedtools intersect -a /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC_exons.gff3 -b allsamples_fst_sd_outlierposition.bed -wb > allsamples_fst_sd_outlier_exons_snps.txt

bedtools intersect -a /fs/ess/PUOM0007/pv_chrom_refgenome/GSC_HSeal_1.0_HiC_cds.gff3 -b allsamples_fst_sd_outlierposition.bed -wb > allsamples_fst_sd_outlier_cds_snps.txt
