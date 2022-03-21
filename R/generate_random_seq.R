#' Generating random DNA sequence
#'
#' @param DNA_seq
#'
#' @return
#' @export
#'
#' @examples
generate_random_seq <- function(size){
  sampling <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  DNA_seq_concat <- paste0(sampling, collapse = "")
  return(DNA_seq_concat)
}
