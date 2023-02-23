#' Title Defines DJSIR theme for scatter plots - function is called by 'theme_djsir' but not exported
#'
#' @param base_size Default is 12
#' @param base_family Default is 'sans'
#' @param background Default is 'white'
#' @param panel_borders Default is FALSE
#'
#' @return ret

theme_djsir_scatter <- function(base_size = 12,
                                base_family = "sans",
                                background = "white",
                                panel_borders = FALSE) {
  ret <- theme_djsir_base(
    base_size = base_size,
    base_family = base_family,
    background = background,
    panel_borders = panel_borders
  )

  ret
}
