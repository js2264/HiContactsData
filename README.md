# HiContactsData

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check-bioc](https://github.com/js2264/HiContactsData/actions/workflows/check-bioc.yml/badge.svg)](https://github.com/js2264/HiContactsData/actions/workflows/check-bioc.yml)
[![pkgdown](https://github.com/js2264/HiContactsData/workflows/pkgdown/badge.svg)](https://github.com/js2264/HiContactsData/actions)
<!-- badges: end -->

HiContactsData is a companion data package giving programmatic access to 
several processed Hi-C files for demonstration, such as cool, mcool and 
pairs files. It is meant to be used with `HiContacts`. 

The only function provided by HiContactsData package is `HiContactsData()`. 
Several files are avaible using this function, namely: 

- From [Bastie, Chapard et al., Nature Structural & Molecular Biology 2022](https://doi.org/10.1038/s41594-022-00780-0):
  - S288C fastq files (R1 & R2) (`sample`: `yeast_wt`, `format` = `fastq_R{12}`)
  - S288C HiCool processing log (`sample`: `yeast_wt`, `format` = `HiCool_log`)
  - S288C.cool (`sample`: `yeast_wt`, `format` = `cool`)
  - S288C.mcool (`sample`: `yeast_wt`, `format` = `mcool`)
  - S288C.pairs.gz for chrII only (`sample`: `yeast_wt`, `format` = `pairs`)
  - S288C_Eco1-AID.mcool (`sample`: `yeast_Eco1`, `format` = `mcool`)
  - S288C_Eco1-AID.pairs.gz for chrII only (`sample`: `yeast_Eco1`, `format` = `pairs`)

- From [Bonev et al., Cell 2017](https://doi.org/10.1016/j.cell.2017.09.043):
  - mESCs.mcool (`sample`: `mESCs`, `format` = `mcool`)
  - mESCs.pairs.gz for chr13 only (`sample`: `mESCs`, `format` = `pairs`)
