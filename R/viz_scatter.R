

#' Generate a scatterplot
#'
#' Explore the distribution of your data with a scatterplot This function generates
#' a ggplot2 object, so it's easily expanded with labels, themes, and other elements.
#'
#'
#'
#' @param data data.frame
#' @param xvar variable
#' @param yvar variable
#'
#' @return
#' @export
#'
#' @examples
#'
#'x <- c(1,2,3,4,5)
#'y <-  rnorm(5, x, 0.5)
#' my_data <- data.frame(x = x, y = y)
#' viz_scatter(my_data, x, y)

#' @importFrom rlang .data
viz_scatter <- function(data, xvar, yvar) {

  gg <-
    ggplot2::ggplot(data) +
    ggplot2::aes(x = {{xvar}}, y = {{yvar}}) +
    ggplot2::geom_point()

  return(gg)

}
