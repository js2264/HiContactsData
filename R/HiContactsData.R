#' HiContactsData
#'
#' @description Downloads different types of Hi-C processed files 
#'   (cool, mcool, pairs.gz) and returns the path of the cached file. 
#' @param sample sample
#' @param format format
#' 
#' @return Local path of the queried file cached with BiocFileCache.
#' @import ExperimentHub
#' @import AnnotationHub
#' @import BiocFileCache
#' @export
#' 
#' @examples
#' HiContactsData(sample = 'yeast_wt', format = 'cool')

HiContactsData <- function(sample, format) {
    samples <- c('yeast_wt', 'yeast_eco1', 'mESCs')
    formats <- c('cool', 'mcool', 'pairs.gz')
    if (!sample %in% samples) stop(message(
        'Please select a valid sample. ', 
        'Available choices: "yeast_wt", "yeast_eco1", "mESCs".'
    ))
    if (!format %in% formats) stop(message(
        'Please select a valid format. ', 
        'Available choices: "cool", "mcool", "pairs.gz".'
    ))
    if (sample == 'yeast_wt' & format == 'cool') {
        ehub_entry <- 'EH5434'
    } 
    else if (sample == 'yeast_wt' & format == 'mcool') {
        ehub_entry <- 'EH5434'
    } 
    else if (sample == 'yeast_wt' & format == 'pairs.gz') {
        ehub_entry <- 'EH5434'
    } 
    else if (sample == 'yeast_eco1' & format == 'mcool') {
        ehub_entry <- 'EH5434'
    } 
    else if (sample == 'yeast_eco1' & format == 'pairs.gz') {
        ehub_entry <- 'EH5434'
    } 
    else if (sample == 'mESCs' & format == 'mcool') {
        ehub_entry <- 'EH5434'
    } 
    else if (sample == 'mESCs' & format == 'pairs.gz') {
        ehub_entry <- 'EH5434'
    } 
    else {
        stop('Unknown combination of `sample` and `format`. Check `HiContactsDataFiles() for more info.`')
    }
    ehub <- ExperimentHub::ExperimentHub()
    # res <- ehub[[ehub_entry]]
    res <- '6d144243feb9_5377'
    file <- file.path(AnnotationHub::hubCache(ehub), paste(sample, format, sep = '.'))
    if (file.exists(file)) unlink(file)
    file.symlink(file.path(AnnotationHub::hubCache(ehub), res), file)
    return(file)
}

#' HiContactsDataFiles
#'
#' @description List of all available files provided by HiContactsData.
#' 
#' @return data.frame
#' @export
#' 
#' @examples
#' HiContactsDataFiles()

HiContactsDataFiles <- function() {
    df <- rbind(
        c('yeast_wt', 'cool', 'S288C', 'wild-type', 'cool file @ resolution of 1kb'),
        c('yeast_wt', 'mcool', 'S288C', 'wild-type', 'multi-res mcool file'),
        c('yeast_wt', 'pairs.gz', 'S288C', 'wild-type', 'only pairs from chrII are provided'),
        c('yeast_eco1', 'mcool', 'S288C', 'Eco1-AID+IAA', 'multi-res mcool file'),
        c('yeast_eco1', 'pairs.gz', 'S288C', 'Eco1-AID+IAA', 'only pairs from chrII are provided'),
        c('mESCs', 'mcool', 'mm10', 'mESCs', 'multi-res mcool file'),
        c('mESCs', 'pairs.gz', 'mm10', 'mESCs', 'only pairs from chr13 are provided')
    )
    colnames(df) <- c('sample', 'format', 'genome', 'condition', 'notes')
    df <- as.data.frame(df)
    return(df)
}


