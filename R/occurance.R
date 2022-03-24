#' amino acid occurance
#'
#' @param amino_acid_seq
#'
#' @return
#' @export
#'
#' @examples
occurance <- function(amino_acid_seq){
  amino_acid_split <- amino_acid_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(name_me3, function(amino_acid) stringr::str_count(string = amino_acid_seq, pattern =  amino_acid)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acid_seq"]] <- rownames(counts)

  name_me4 <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acid_seq, y = Counts, fill = amino_acid_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(name_me4)
}

