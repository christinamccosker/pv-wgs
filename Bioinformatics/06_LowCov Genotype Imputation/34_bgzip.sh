#!/usr/bin/bash

cd /fs/scratch/PUOM0007/Analysis_Chromosome/pileup

module load htslib

for i in *.vcf
do
bgzip $i
done
