#' Style your ggplot2 plots in the DJSIR style.
#'
#' @name theme_djsir
#' @param base_size Size for text elements. Default is 14.
#' @param base_family Font family for text elements. Default is "sans".
#' @param chart_type "normal" by default. Set to "scatter" for scatter plots.
#' @param flipped FALSE by default. Set to TRUE if using coord_flip(). If set to
#'   TRUE, the theme will show a vertical axis line, ticks & panel grid, while
#'   hiding the horizontals. Ignored for type = "scatter".
#' @param background "white" by default.
#' @param panel_borders `FALSE` by default. Set to `TRUE` to enable a black
#'   border around the plotting area.
#' @import ggrepel
#' @import ggplot2
#' @export

theme_djsir <- function(base_size = 14,
                        base_family = getOption("djprtheme.base_font_family", "sans"),
                        chart_type = "normal",
                        flipped = FALSE,
                        background = "white",
                        panel_borders = FALSE) {

  if (!chart_type %in% c("normal", "scatter")) {
    warning(paste0(
      "Note: chart_type should be 'normal' or 'scatter', but you entered '",
      chart_type, "'. Reverting to 'normal'"
    ))
    chart_type <- "normal"
  }

  if (chart_type == "normal") {
    ret <- theme_djsir_normal(
      base_size = base_size,
      base_family = base_family,
      background = background,
      panel_borders = panel_borders,
      flipped = flipped
    )
  }

  if (chart_type == "scatter") {
    ret <- theme_djsir_scatter(
      base_size = base_size,
      base_family = base_family,
      background = background,
      panel_borders = panel_borders
    )
    if (flipped) message("Note that the 'flipped' argument is ignored for scatter plots.")
  }

  # Call a function that modifies various geom defaults
  djsirify_geom_defaults()

  # Return
  return(ret)
}
