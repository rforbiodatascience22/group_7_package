#' translation from RNA sequence codons to amino acid sequence
#'
#' @param codons
#'
#' @return codons_concat
#' @export
#'
#' @examples
translation <- function(codons){
  codons_concat <- paste0(conversion_table[codons], collapse = "")
  return(codons_concat)
}
