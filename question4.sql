use bioinf_examen;
Select gene_name, (seq_region_end -seq_region_start) as lenght from gene order by lenght desc limit 3;