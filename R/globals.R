HiContactsDataFiles <- rbind(
    c('yeast_wt', 'cool', 'S288C', 'wild-type', 'cool file @ resolution of 1kb', 'EH7701'),
    c('yeast_wt', 'mcool', 'S288C', 'wild-type', 'multi-res mcool file', 'EH7702'),
    c('yeast_wt', 'hic', 'S288C', 'wild-type', 'multi-res .hic file', '.'),
    c('yeast_wt', 'hicpro_matrix', 'S288C', 'wild-type', 'HiC-Pro matrix file @ 1kb', '.'),
    c('yeast_wt', 'hicpro_bed', 'S288C', 'wild-type', 'HiC-Pro bed file @ 1kb', '.'),
    c('yeast_wt', 'pairs.gz', 'S288C', 'wild-type', 'only pairs from chrII are provided', 'EH7703'),
    c('yeast_wt', 'HiCool_log', 'S288C', 'wild-type', 'HiCool log file', '.'),
    c('yeast_wt', 'fastq_R1', 'S288C', 'wild-type', 'fastq (R1)', '.'),
    c('yeast_wt', 'fastq_R2', 'S288C', 'wild-type', 'fastq (R2)', '.'),
    c('yeast_eco1', 'mcool', 'S288C', 'Eco1-AID+IAA', 'multi-res mcool file', 'EH7704'),
    c('yeast_eco1', 'pairs.gz', 'S288C', 'Eco1-AID+IAA', 'only pairs from chrII are provided', 'EH7705'),
    c('mESCs', 'mcool', 'mm10', 'mESCs', 'multi-res mcool file', 'EH7706'),
    c('mESCs', 'pairs.gz', 'mm10', 'mESCs', 'only pairs from chr13 are provided', 'EH7707')
)
colnames(HiContactsDataFiles) <- c('sample', 'format', 'genome', 'condition', 'notes', 'EHID')
HiContactsDataFiles <- data.frame(HiContactsDataFiles)