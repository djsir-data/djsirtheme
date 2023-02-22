#' @title DJSIR colour palette definition (11 colours)
#'
#' @return character vector
#' @export
#'

djsir_pal <- c(
  djsir_cobalt,
  djsir_bondi_blue,
  djsir_lima,
  djsir_electric_lime,
  djsir_royal_blue,
  djsir_green,
  djsir_persimmon,
  djsir_dark_tangerine,
  djsir_black_rock,
  djsir_cool_grey_11,
  djsir_cool_grey_1
)


#' Title Function takes an integer and returns colours
#'
#' @param n numeric. The number of levels in your colour scale = number of colours required.
#'             Minimum and default value is 1, maximum is 11. More than 6 is not recommended.
#'             If n is >11, the colour palette is doubled, starting from 1 again.
#' @param ... arguments passed to `ggplot2::scale_*_manual()`
#' @return palette which is a character vector of colours
#' @export
#'
#' @examples
#' #' library(ggplot2)
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
#'   geom_point() +
#'   theme_djsir() +
#'   scale_colour_manual(values = djsir_pal(n = 3))
#'
#' p
#'
#' # Alternatively, use scale_colour_djsir(), which is a wrapper
#' # around scale_colour_manual():
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
#'   geom_point() +
#'   theme_djsir() +
#'   scale_colour_djsir(3)
#'
#' p
#'
#'
#' # When applying colours as a fill, use scale_fill_djsir, which is
#' # a wrapper around scale_colour_manual:
#'
#' p <- ggplot(mtcars, aes(x = mpg, fill = factor(cyl))) +
#'   geom_histogram() +
#'   theme_djsir() +
#'   scale_fill_djsir(3)
#' p

djsir_pal <- function(n = 1) {
  if (n == 1) {
    palette <- djsir_cobalt                          #004C97
  } else if (n == 2) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima                                     #78BE20
    )
  } else if (n == 3) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue                               #009CA6
    )
  } else if (n == 4) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime                            #CEDC00
    )
  } else if (n == 5) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_cool_grey_1                              #d9d9d6
    )
  } else if (n == 6) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_black_rock,                              #343641
      djsir_dark_tangerine                           #FF9E1B
    )
  } else if (n == 7) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_cool_grey_1,                             #d9d9d6
      djsir_black_rock,                              #343641
      djsir_dark_tangerine                           #FF9E1B
    )
  } else if (n == 8) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_cool_grey_1,                             #d9d9d6
      djsir_black_rock,                              #343641
      djsir_dark_tangerine,                          #FF9E1B
      djsir_green                                    #69972C
    )
  } else if (n == 9) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_cool_grey_1,                             #d9d9d6
      djsir_black_rock,                              #343641
      djsir_dark_tangerine,                          #FF9E1B
      djsir_green,                                   #69972C
      djsir_cool_grey_11                             #53565a
    )
  } else if (n == 10) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_cool_grey_1,                             #d9d9d6
      djsir_black_rock,                              #343641
      djsir_dark_tangerine,                          #FF9E1B
      djsir_green,                                   #69972C
      djsir_cool_grey_11,                            #53565a
      djsir_persimmon                                #E35205
    )
  } else if (n == 11) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_cool_grey_1,                             #d9d9d6
      djsir_black_rock,                              #343641
      djsir_dark_tangerine,                          #FF9E1B
      djsir_green,                                   #69972C
      djsir_cool_grey_11,                            #53565a
      djsir_persimmon,                               #E35205
      djsir_royal_blue                               #13345E
    )
  } else if (n > 11) {
    rep(djsir_pal, ceiling(length(djsir_pal) / n))[1:n]
     }

  palette
}

#' Title DJSIR wrapping function defining colour for the fill of a graph object
#'
#' @param ... arguments passed to `ggplot2::scale_*_manual()`
#' @export
#'
#' @examples TBD

scale_fill_djsir <- function(...) {

  ggplot2::discrete_scale(
    "fill",
    "DJSIR",
    djsir_pal(n)
  )
}

#' Title DJSIR function defining the colour of a graph object
#'
#' @param ... arguments passed to `ggplot2::scale_*_manual()`
#' @export
#'
#' @examples TBD

scale_colour_djsir <- function(...){

  ggplot2::discrete_scale(
    "colour",
    "DJSIR",
    function(n) rep(djsir_pal, ceiling(length(djsir_pal) / n))[1:n],
    ...
  )
}
