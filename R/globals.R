HiContactsDataFiles <- rbind(
    c('yeast_wt', 'fastq_R1', 'S288C', 'wild-type', 'fastq (R1)', 'EH7783'),
    c('yeast_wt', 'fastq_R2', 'S288C', 'wild-type', 'fastq (R2)', 'EH7784'),
    c('yeast_wt', 'HiCool_log', 'S288C', 'wild-type', 'HiCool log file', 'EH7785'),
    c('yeast_wt', 'pairs.gz', 'S288C', 'wild-type', 'only pairs from chrII are provided', 'EH7703'),
    c('yeast_wt', 'cool', 'S288C', 'wild-type', '.cool file @ resolution of 1kb', 'EH7701'),
    c('yeast_wt', 'mcool', 'S288C', 'wild-type', 'multi-res .mcool file', 'EH7702'),
    c('yeast_g1', 'mcool', 'S288C', 'wild-type', 'multi-res .mcool file', 'EH8562'),
    c('yeast_g1', 'pairs', 'S288C', 'wild-type', 'filtered pairs are provided', 'EH8564'),
    c('yeast_g2m', 'mcool', 'S288C', 'wild-type', 'multi-res .mcool file', 'EH8563'),
    c('yeast_g2m', 'pairs', 'S288C', 'wild-type', 'filtered pairs are provided', 'EH8565'),
    c('yeast_wt', 'hic', 'S288C', 'wild-type', 'multi-res .hic file', 'EH7786'),
    c('yeast_wt', 'hicpro_matrix', 'S288C', 'wild-type', 'HiC-Pro matrix file @ 1kb', 'EH7787'),
    c('yeast_wt', 'hicpro_bed', 'S288C', 'wild-type', 'HiC-Pro bed file @ 1kb', 'EH7788'),
    c('yeast_wt', 'hicpro_pairs', 'S288C', 'wild-type', 'HiC-Pro .allValidPairs file', 'EH7789'),
    c('yeast_eco1', 'mcool', 'S288C', 'Eco1-AID+IAA', 'multi-res .mcool file', 'EH7704'),
    c('yeast_eco1', 'pairs.gz', 'S288C', 'Eco1-AID+IAA', 'only pairs from chrII are provided', 'EH7705'),
    c('mESCs', 'mcool', 'mm10', 'mESCs', 'multi-res .mcool file', 'EH7706'),
    c('mESCs', 'pairs.gz', 'mm10', 'mESCs', 'only pairs from chr13 are provided', 'EH7707'), 
    c('microC', 'mcool', 'GRCh38', 'HFFc6', 'multi-res .mcool file, only chr17 is provided', 'EH8535')
)
colnames(HiContactsDataFiles) <- c(
    'sample', 'format', 'genome', 'condition', 'notes', 'EHID'
)
HiContactsDataFiles <- data.frame(HiContactsDataFiles)