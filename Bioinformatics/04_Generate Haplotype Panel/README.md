# Generate Haplotype Panel
Create reference haplotype panel using high-coverage samples for genotype imputation of low coverage samples.

## Scripts  
- `10_prepare_reference.sh`: Prepare reference fasta index file for GATK.  
- `11_samtools_index_mergedmarkdup.sh`:Index sample files.  
- `12_GATK_haplotypecaller.sh`: Call variants within high coverage samples.  
   - Ensure reference genome is unzipped  
   - Split chromosomes to decrease time per job for variant calling by specifying a list of chromosomes for "intervals".  
- `13_GATK_GatherVcfs.sh`: Concatenate all vcf files per sample.  
- `15_GATK_Combine_GVCFs.sh`: Combine GVCF files from high coverage samples to use for genotype calling.  
- `14_GATK_IndexFeatureFile.sh`: Index all sample-level vcf files.  
- `16_GATK_GenotypeGVCFs.sh`: Call genotypes across high coverage samples.  
   - Standard min confidence threshold and max # alleles left as default.  
- `17_samtools_chromreaddepth.sh`: Calculate read depth for each chromosome.  
   - At sex chromosome, expect males = 0.5 while females = 1.  
- `17_bcftools_view_reducechrom`: Remove the sex chromosome from vcf file.  
   - Harbor seal DNA Zoo reference genome sex chromosome = HiC_scaffold_15.  

## Additional Files  
- `chromosomes_[1-5].list`: Lists of chromosome/scaffold names in reference genome for variant calling.  
- `HighCovSamples.txt`: Sample #s for high coverage samples.  
- `chromosome_length.txt`: Tab-delimited text file with each chromosome and its length.  
