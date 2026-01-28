#!/usr/bin/bash

cd /fs/ess/PUOM0007/

./plink --vcf /fs/ess/PUOM0007/plinkk/allsamples_maf.vcf.gz --allow-extra-chr --indep-pairwise 100 5 0.2 --recode --out /fs/ess/PUOM0007/plinkk/allsamples_maf_prune

./plink --file /fs/ess/PUOM0007/plinkk/allsamples_maf_prune --allow-extra-chr --extract /fs/ess/PUOM0007/plinkk/allsamples_maf_prune.prune.in --recode vcf --out /fs/ess/PUOM0007/plinkk/allsamples_maf_prune

./plink --vcf /fs/ess/PUOM0007/plinkk/allsamples_maf_prune.vcf --allow-extra-chr --recode AD --out /fs/ess/PUOM0007/plinkk/allsamples_maf_prune_dom
