#' DNA to RNA transcription
#'
#' @param DNA
#'
#' @return RNA sequence
#' @export
#'
#' @examples
transcription <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
