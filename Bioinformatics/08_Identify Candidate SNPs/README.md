# Identify Candidate SNPs
GWAS and Fst based approaches to identify candidate SNPs and their putative functions.   

## Scripts:  
- `54_GWAS.md`: Instructions for finding R code to conduct GWAS analysis.  
- `55_vcftools_fst.sh`: Calculate Fst SNPs between cases and controls.  
- `56_Fst.md`: Instructions for finding R code to conduct Fst based analysis.  
- `57_split_gff.sh`: Split harbor seal reference genome annotation file (*.gff) into: genes, exons, cds.  
- `58_bedtools_intersect.sh`: Convert SNP 600bp flanking regions to bed format and extract annotation information for each SNP identified through Fst based approach.  
- `59_snpcds_seq.sh`: Extract the coding sequence for the gene that contains a SNP in the coding region.  

## Additional Files:  
- `control_seqID.txt`: Sequence identifiers for control samples.  
- `case_seqID.txt`: Sequence identifiers for case samples.  
- `cds_position`: Chromosome:Start-End position for SNP in coding sequence region.  
