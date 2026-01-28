#!/usr/bin/bash

cd /fs/ess/PUOM0007/pv_chrom_refgenome

awk '$3 == "gene"' GSC_HSeal_1.0_HiC.fasta_v2.functional.gff3 > GSC_HSeal_1.0_HiC_genes.gff3

awk '$3 == "exon"' GSC_HSeal_1.0_HiC.fasta_v2.functional.gff3 > GSC_HSeal_1.0_HiC_exons.gff3

awk '$3 == "CDS"' GSC_HSeal_1.0_HiC.fasta_v2.functional.gff3 > GSC_HSeal_1.0_HiC_cds.gff3
