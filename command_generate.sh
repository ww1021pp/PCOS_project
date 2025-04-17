n=1
sed '1d' /workspace/rsrch2/panpanliu/project/Isbella_2MR/GWAS_Download_0402/European_Traits_InGWASnoPCOS.20250402.txt | awk -F'\t' '{print $NF}' | while IFS= read -r line; do
  echo -e "/usr/bin/Rscript /workspace/rsrch2/panpanliu/project/Isbella_2MR/Script/MR_sensitivity_analysis.R \"$line\" >./logs/${n}_Sen_log.txt" >>MRsen_command.sh
     ((n++))
 done
