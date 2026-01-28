#!/usr/bin/bash

cd /fs/ess/PUOM0007/

while read in
do
while read reg
do
java -jar beagle.22Jul22.46e.jar impute=true gt=/fs/scratch/PUOM0007/Analysis_Chromosome/filtercalls/Sample_${in}_${reg}_filter.vcf.gz ref=/fs/ess/PUOM0007/shapeit4/30xSamples_${reg}_reheader.vcf.gz out=/fs/ess/PUOM0007/beagle/Sample_${in}_${reg}_imputed
done < /fs/ess/PUOM0007/scripts_chromosome/chromosome_names.txt
done < /fs/ess/PUOM0007/scripts_chromosome/HighCovSamples.txt
