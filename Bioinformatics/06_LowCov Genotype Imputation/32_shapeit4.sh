#!/usr/bin/bash

module load miniconda3
source activate whatshap_shapeit

for i in {1..16}
do
if [[ $i -eq 15 ]]; then
continue
fi
shapeit4 --input /fs/ess/PUOM0007/whatshap/30xSamples_phased.vcf.gz --region HiC_scaffold_${i} --output /fs/ess/PUOM0007/shapeit4/30xSamples_HiC_scaffold_${i}.vcf.gz --use-PS 0.0001 --sequencing
done

conda deactivate
