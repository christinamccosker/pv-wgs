# Sample Processing
Process bam files for variant calling.  

Scripts:  
`05_samtools_sort-index.sh`: Sort and index binary alignments.  
`06_picard_add_readgroup.sh`: Add read group information in accordance with GATK's best practices (https://gatk.broadinstitute.org/hc/en-us/articles/360035890671-Read-groups).  
    - ID = Lane #  
    - LB = end #  
    - PL = Illumina  
    - SM = Sample Identifier  
    - PU = ID-LB  

`07_picard_markduplicates.sh`: Mark and remove possible optical duplicates.  
`08_samtools_merge.sh`: Merge *.bam files for each sample.  
    - Create "samplekey" text file with "sample# sampleID" for each sample.  
`09_samtools_genomesize.sh`: Calculate size of harbor seal genome.  
`09_samtools_readdepth.sh`: Calculate read depth per sample.  
    - Divide by # obtained from `09_samtools_genomesize.sh`  
