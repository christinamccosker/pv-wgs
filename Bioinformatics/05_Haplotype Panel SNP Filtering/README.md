# Haplotype Panel SNP Filtering
Filter SNPs in reference haplotype panel to create set of high-quality bi-allelic SNPs.

## Scripts  
- `18_pca_outliers.md`: Instructions for using R to check for sample outliers.   
- `19_bcftools_filter.sh`: Mask variant calls ± 5bp around indels.  
- `20_bcftools_view_filterbiallelic.sh`: Remove multi-nucleotide polymorphisms to create set of high quality bi-allelic SNPs.  
- `21_GATK_VariantFiltration.sh`: Use hard filtering parameters on SNP calls.  
   - Used GATK default values: https://gatk.broadinstitute.org/hc/en-us/articles/360035890471-Hard-filtering-germline-short-variants  
- `22_GATK_VariantsToTable.sh`: Get a list of SNPs that pass/fail hard filtering metrics.  
- `23_plotmetrics.md`: Instructions for plotting metrics from GATK to assess the best hard filtering parameters.  
- `24_GATK_VariantFiltration2.sh`: Adjust GATK filtering parameters based on plots.  
- `25_GATK_SelectVariants.sh`: Exclude filtered SNPs from dataset.  
- `26_vcftools_filter.sh`: Remove sites with >2 genotypes missing (2/20 = 10%).  
   - Used 10% following Fuller et al. (https://www.science.org/doi/10.1126/science.aba4674) and Almeida et al. 2021 (https://academic.oup.com/mbe/article/38/2/619/5918473?login=true#226582298).  
- `27_bcftools_stats.sh`: Calculate # of SNPs present at each stage of filtering process.  
- `28_GATK_VariantsToTable_filtered.sh`: Check that vcf files have information for samples.  
   - Use -GF (genotype field) to get FORMAT/sample-level fields.  
