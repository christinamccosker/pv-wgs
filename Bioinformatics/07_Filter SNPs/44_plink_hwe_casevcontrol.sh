#!/usr/bin/bash

cd /fs/ess/PUOM0007/

./plink --vcf /fs/ess/PUOM0007/gatherbeaglevcf/cases.vcf.gz --allow-extra-chr --real-ref-alleles --recode vcf --hwe 1e-6 --out /fs/ess/PUOM0007/plinkk/cases_hwe

./plink --vcf /fs/ess/PUOM0007/gatherbeaglevcf/controls.vcf.gz --allow-extra-chr --real-ref-alleles --recode vcf --hwe 1e-6 --out /fs/ess/PUOM0007/plinkk/controls_hwe
