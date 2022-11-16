#' HiContactsData
#'
#' @description Downloads different types of Hi-C processed files 
#'   (cool, mcool, pairs.gz, fastq) and returns the path of the cached file. 
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

HiContactsData <- function(sample = NULL, format = NULL) {
    ehub_entry <- HiContactsDataFiles[
        which(HiContactsDataFiles$sample == sample & 
            HiContactsDataFiles$format == format), 
        "EHID"
    ]
    if (length(ehub_entry) == 0) {
        message('Available files: \n')
        print(HiContactsDataFiles)
        message('')
        if (!is.null(sample) | !is.null(format)) {
            stop('Unknown combination of `sample` and `format`.\n  ', 
                'Please check which files are available from ', 
                'the data frame printed above.'
            )
        } 
        else {
            return()
        }
    }
    ehub <- ExperimentHub::ExperimentHub()
    res <- ehub[[ehub_entry]]
    return(res)
}
