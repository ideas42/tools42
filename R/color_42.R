

#
# These are the i42 palettes
#


# List of color palettes

i42_colors <- list(
  i42 <- c("#1c8a70", "#0078b7", "#fddb12", "f37321"),
  i42_bright = c("#5A73BF", "#ADB8D9", "#A46656", "#F2B138", "#AA1E0C")
)


# pal42 function

pal42 <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- i42_colors[[name]]
  if (is.null(pal))
    stop("Check spelling. Palette does not exist")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop(paste0("Roses are red, violets are blue, but this palette only has ", length(pal), "items for you."))
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#printing the palette
print.palette <- function(x, ...) {

  dt <- data.frame(a = 1:length(x), b = rep(5, length(x)))
  pl <- dt %>%
    ggplot2::ggplot(aes(a,b,fill = factor(a)))+
    ggplot2::geom_col()+
    ggplot2::scale_fill_manual(values = x)+
    ggplot2::guides(fill = FALSE)+
    ggplot2::labs(title = attr(x, "name"))+
    ggplot2::coord_fixed(ratio = 1)+
    ggplot2::theme_void()+
    ggplot2::theme(plot.title = ggplot2::element_text( hjust = .5,
                                     vjust = 2))
  print(pl)
}
