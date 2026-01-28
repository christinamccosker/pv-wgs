#!/usr/bin/bash

module load vcftools

vcftools --vcf /fs/ess/PUOM0007/plinkk/allsamples_maf_prune.vcf --weir-fst-pop textfiles/z_case_seqID.txt --weir-fst-pop textfiles/z_control_seqID.txt --out /fs/ess/PUOM0007/vcftools_fst/allsamples.casevcontrol
