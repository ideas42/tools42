

#Define theme_42() function

#' Apply the ideas42 theme to your graphs
#'
#' @return
#' @export
#'
#' @examples
#'


theme_42 <- function(){
  font <- "Fira Sans"   #assign font family up front

  ggplot2::theme(    #replace elements we want to change
    plot.background = ggplot2::element_blank(), complete = TRUE,

    legend.background = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),

    panel.background = ggplot2::element_blank(),
    panel.border = ggplot2::element_blank(),

    strip.background = ggplot2::element_blank(),
    #grid elements
      #panel.grid.major = element_blank(),    #strip major gridlines
      panel.grid.minor = ggplot2::element_blank(),    #strip minor gridlines
      axis.ticks = ggplot2::element_blank(),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = ggplot2::element_text(  #title
        family = font,            #set font family
        size = 20,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2),               #raise slightly

      plot.subtitle = ggplot2::element_text(#subtitle
        family = font,            #font family
        hjust = 0,
        size = 14),               #font size

      plot.caption = ggplot2::element_text(#caption
        family = font,            #font family
        size = 9,                 #font size
        hjust = 1),               #right align

      axis.title = ggplot2::element_text(  #axis titles
        family = font,            #font family
        size = 10),               #font size

      axis.text = ggplot2::element_text(   #axis text
        family = font,            #axis family
        size = 9),                #font size

      axis.text.x = ggplot2::element_text( #margin for axis text
        margin=ggplot2::margin(5, b = 10)),

      #since the legend often requires manual tweaking
      #based on plot content, don't define it here

      plot.margin = ggplot2::margin(30, 30, 30, 30)

    )
}


