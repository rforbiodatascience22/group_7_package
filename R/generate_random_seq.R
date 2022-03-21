#' Generating random DNA sequence
#'
#' @param DNA_seq
#'
#' @return
#' @export
#'
#' @examples
generate_random_seq <- function(DNA_seq){
  sampling <- sample(c("A", "T", "G", "C"), size = DNA_seq, replace = TRUE)
  DNA_seq_concat <- paste0(sampling, collapse = "")
  return(DNA_seq_concat)
}
