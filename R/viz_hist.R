

#' Generate a histogram with i42 styling
#'
#' Explore the distribution of your data with a histogram. This function generates
#' a ggplot2 object, so it's easily expanded.
#'
#'
#'
#' @param data data.frame
#' @param xvar variable
#'
#' @return
#' @export
#'
#' @examples
#'
#' my_data <- data.frame(my_variable = c(1,2,3,4,5))
#' viz_hist(my_data, "my_variable")

#' @importFrom rlang .data
viz_hist <- function(data, xvar) {

  gg <-
    ggplot2::ggplot(data) +
    ggplot2::aes(x = .data[[xvar]]) +
    ggplot2::geom_histogram()

  return(gg)

}
