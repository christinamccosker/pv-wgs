Download `30xSamples_nosex_hardfilter.table` to directory with R script.  
See `R Analysis/03-plotmetrics_step23.Rmd` for R code to create plots to check filtering parameters.  
End result is to edit filters:  
  - Exclude variants with MQRankSum > 12.5 too (43 of those)  
  - Exclude variants with ReadPosRankSum > 8 too (96 of those)  
