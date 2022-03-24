#' Histogram for amino acid occurance
#'
#' @param amino_acid_seq
#' @importFrom magrittr %>%
#' @export
amino_acid_occurance <- function(amino_acid_seq){
  amino_acid_split <- amino_acid_seq %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(amino_acid_split, function(occurance_plot) stringr::str_count(string = amino_acid_seq, pattern =  occurance_plot)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["amino_acid_seq"]] <- rownames(counts)

  occurance_plot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = amino_acid_seq, y = Counts, fill = amino_acid_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(occurance_plot)
}


