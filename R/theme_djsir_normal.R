#' Title Defines DJSIR normal theme - function is called by 'theme_djsir' but not exported
#'
#' @param base_size Default is 12
#' @param base_family Default is 'sans'
#' @param flipped Default is FALSE
#' @param background Default is 'white'
#' @param panel_borders Default is FALSE
#'
#' @return ret

theme_djsir_normal <- function(base_size = 12,
                               base_family = "sans",
                               flipped = FALSE,
                               background = "white",
                               panel_borders = FALSE) {

  ret <- theme_djsir_base(
    base_size = base_size,
    base_family = base_family,
    background = background,
    panel_borders = panel_borders
  )

  # reverse when flipped = TRUE; only if type = 'normal'
  if (isTRUE(flipped)) {
    ret <- ret %+replace%
      ggplot2::theme(
        panel.grid.major.y = ggplot2::element_blank(),
        axis.line.x = ggplot2::element_blank(),
        axis.ticks.x = ggplot2::element_blank(),
        axis.title.y = ggplot2::element_blank()
      )
  } else {
    ret <- ret %+replace%
      ggplot2::theme(
        axis.line.y = ggplot2::element_blank(),
        axis.ticks.y = ggplot2::element_blank(),
        axis.title.y = ggplot2::element_blank(),
        panel.grid.major.x = ggplot2::element_blank()
      )
  }

  ret

}
