# LowCov Genotype Imputation
Impute genotypes in low coverage samples using haplotype panel generated from high coverage samples.  

Scripts:  
`30_whatshap_30x.sh`: Extract phase-informative reads using set of filtered, high coverage biallelic SNPs.  
`31_bgzip-index.sh`: bgzip and index phaseinfo vcf file.  
`32_shapeit.sh`: Estimate haplotypes (aka phasing).  
`33_bcftools_mpileup_low.sh`: Generate genotype likelihoods for low coverage samples.  
`33_bcftools_mpileup_high.sh`: Generate genotype likelihoods for high coverage samples.  
`34_bgzip.sh`: bgzip pileup vcf files for input to bcftools call.  
`35_bcftools_index.sh`: Index bgzipped vcf files.  
`36_bcftools_call.sh`: Call variants in low and high coverage samples.  
`37_bcftools_view_filterbiallelic.sh`: Remove multi-nucleotide polymorphisms to create set of biallelic SNPs for imputation.  
`38_bcftools_reheader.sh`: Rename samples in haplotype panel so beagle will impute high coverage samples.  
`39_beagle_lowcov.sh`: Impute missing genotypes in low coverage samples.  
`39_beagle_highcov.sh`: Impute missing genotypes in high coverage samples.  
`40_bcftools_reheader.sh`: Add contig lengths to all vcf files for use in GatherVCFs.  
`41_GATK_GatherVcfs.sh`: Concatenate all vcf files per sample.  
    - Excluding: Sample_43, Sample_77, Sample_106 (low mapping rates), Sample_74 (low sequence coverage), and Sample_79 (lack of confidence in sample grouping).  

Additional Files:  
`chromosome_names.txt`: Text file with names of each chromosome.  
`LowCovSamples.txt`: Text file with the sample number associated with each low coverage sample.  
`HighCovSamples.txt`: Text file with sample number associated with each high coverage sample.  
`reheader.txt`: Alternate names for high coverage samples.  
`allsamples.txt`: Text file with list of all sample numbers that were retained for analyses.  
