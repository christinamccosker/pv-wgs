# Filter SNPs
Filter SNPs for downstream analyses.   

**Scripts:**  
`42_bcftools_index.sh`: Index files for bcftools merge.  
`43_bcftools_merge_casevcontrol.sh`: Merge vcf files for cases and controls separately.  
`44_plink_hwe_casevcontrol.sh`: Filter out SNPs that deviate from Hardy-Weinberg Equilibrium.  
`45_bcftools_bgzip-index.sh`: bgzip and index vcf files.  
`46_bcftools_isec_casecontrol.sh`: Find and extract variants common to both cases and controls.  
`47_bcftools_stats.sh`: Check how many variants are in each file.  
`48_bcftools_merge.sh`: Merge vcf files from all samples into one file.  
`49_bcftools_annotate.sh`: Annotate ID column in vcf file.  
`50_plink_maf_geno.sh`: Filter based on MAF and missing genotypes.  
  - MAF < 5% (0.05)    
  - Missing genotypes >10% of individuals  
`51_popLDdecay.sh`: Estimate and plot LD decay.  
`52_LDprune.sh`: Remove SNPs in linkage disequilibrium.    
  - Window = 100 (based on LD decay plot, decay to background level)  
  - Step = 5 (default)  
  - R2 = 0.2 (based on LD decay plot inflection point)  
  - Recode using A (additive 0/1/2) for input into R  
`52_LDprune_recodeDom.sh`: Remove SNPs in linkage disequilibrium.  
  - Recode using AD (additive 0/1/2, dominant) to get file with genotypes based on minor allele  
`53_relatedness.sh`: Check for identity-by-descent.  
  - No samples came back as related, no samples excluded    

**Additional Files:**  
`all_samples.txt`: Text file with list of all sample numbers that were retained for analyses.  

**Software downloads:**  
plink: https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20230116.zip  
PopLDdecay: https://github.com/hewm2008/PopLDdecay.git  
