# colors
darkcolor <-  "#222222"

cat_colors <- c("#005fab", "#00807d", "#762a84", "#ab4c00")

accent_color <- cat_colors[3]

# Set default color for plots with two categories (GAM and Classic)
options(ggplot2.discrete.colour = cat_colors)

theme_paper <- function(..., base_size = 8) {
  theme_minimal(base_size, base_family = "Helvetica") %+replace% 
  theme(
    panel.border = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(color = darkcolor, size = rel(0.9)),
    axis.text.x = ggtext::element_markdown(color = darkcolor, size = rel(0.9)),
    axis.line = element_line(color = darkcolor),
    axis.ticks = element_line(color = darkcolor),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(linetype = 'dotted', color = "#bbbbbb"),
    panel.spacing = ggplot2::unit(2, "mm"),
    strip.text = ggplot2::element_text(color = darkcolor, size = rel(0.9)),
    legend.key = ggplot2::element_blank(),
    plot.margin = ggplot2::unit(c(2, 2, 1, 1), "mm"),
    plot.background = element_rect(fill = "white", color = NA),
    #panel.background = element_rect(fill = "white"),
    plot.title = ggtext::element_markdown(size = rel(1.3), hjust = 0),
    plot.subtitle = ggtext::element_markdown(size = rel(1.1), hjust = 0),
    plot.tag.position = c(0, 1),
    plot.tag = element_text(size = rel(1.2), margin = margin(l = 1, unit = "lines"))
  )
}


save_plot <- function(name, plot = last_plot(), units = "cm", width = 8.6, height = 6, ...) {
  plot_path <- paste0("plots/", name)
  
  c(
    ggsave(paste0(plot_path, ".png"), plot = plot, device = ragg::agg_png,
           units = units, width = width, height = height, ...),
    ggsave(paste0(plot_path, ".pdf"), plot = plot, device = cairo_pdf,
           units = units, width = width, height = height, ...)
  )
}

