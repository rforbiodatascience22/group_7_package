#' Codons creation from RNA sequence
#'
#' @param RNA_seq
#' @param start
#'
#' @return codons
#' @export
#'
#' @examples
creating_codons <- function(RNA_seq, start = 1){
  len_RNA <- nchar(RNA_seq)
  codons <- substring(RNA_seq,
                      first = seq(from = start, to = len_RNA-3+1, by = 3),
                      last = seq(from = 3+start-1, to = len_RNA, by = 3))
  return(codons)
}
