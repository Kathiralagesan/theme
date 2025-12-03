
theme_kal_modern <- function(
    family = "Arial",
    align_titles = c("center", "left")   # choose "left" for print journals
) {
  
  align_titles <- match.arg(align_titles)
  hjust_title <- ifelse(align_titles == "left", 0.5, 0)
  
  ggplot2::`%+replace%`(
    ggplot2::theme_grey(base_size = 12, base_family = family),
    ggplot2::theme(
      
      # overall layout
      plot.margin = grid::unit(rep(0.6, 4), "cm"),
      plot.background = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      
      # print-friendly & projector-friendly contrast
      axis.text = ggplot2::element_text(size = 11, face = "bold",colour = "#1A1A1A"),
      axis.title = ggplot2::element_text(size = 12, colour = "#272829",
                                         hjust = 0.95, face = "bold",
                                         margin = ggplot2::margin(t = 6, b = 6)),
      
      # titles
      plot.title = ggplot2::element_text(
        size = 18, face = "bold", colour = "#121212",
        hjust = hjust_title,
        margin = ggplot2::margin(b = 12)
      ),
      plot.subtitle = ggplot2::element_text(
        size = 12, colour = "#3A3A3A",
        hjust = hjust_title,
        margin = ggplot2::margin(b = 14)
      ),
      
      # caption
      plot.caption = ggplot2::element_text(size = 10, colour = "#4A4A4A",
                                           hjust = 1,
                                           margin = ggplot2::margin(t = 14)),
      
      # grid lines: subtle but visible on projectors
      panel.grid.major = ggplot2::element_line(
        linetype = "dotted",
        colour = "#9A9A9A",
        linewidth = 0.4
      ),
      panel.grid.minor = ggplot2::element_blank(),
      
      # axis lines
      axis.line = ggplot2::element_line(color = "#3A3A3A", linewidth = 0.5),
      axis.ticks = ggplot2::element_blank(),
      
      # legend
      legend.background = ggplot2::element_rect(fill = "transparent"),
      legend.key = ggplot2::element_rect(fill = "transparent"),
      legend.title = ggplot2::element_text(size = 12, colour = "#1A1A1A"),
      legend.text = ggplot2::element_text(size = 11, colour = "#2A2A2A"),
      legend.spacing.y = grid::unit(4, "pt"),
      
      # facet strips
      strip.background = ggplot2::element_rect(fill = "transparent"),
      strip.text = ggplot2::element_text(
        size = 13, colour = "#1A1A1A",
        margin = ggplot2::margin(4, 4, 4, 4)
      )
    )
  )
}

