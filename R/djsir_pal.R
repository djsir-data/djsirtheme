
djsir_palette <- c(
  djsir_cobalt,                                  #004C97
  djsir_lima,                                    #78BE20
  djsir_bondi_blue,                              #009CA6
  djsir_electric_lime,                           #CEDC00
  djsir_royal_blue,                              #13345E
  djsir_cool_grey_1,                             #d9d9d6
  djsir_persimmon,                               #E35205
  djsir_black_rock,                              #343641
  djsir_green,                                   #69972C
  djsir_dark_tangerine,                          #FF9E1B
  djsir_cool_grey_11                            #343641
)


#' Title Function takes an integer and returns colours
#'
#' @param n numeric. The number of levels in your colour scale = number of colours required.
#'             Minimum and default value is 1, maximum is 11. More than 6 is not recommended.
#'             If n is >11, the colour palette is doubled, starting from 1 again.
#' @return palette which is a character vector of colours
#' @export
#'
#' @examples
#' library(ggplot2)
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
      djsir_royal_blue                               #13345E
    )
  } else if (n == 6) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_royal_blue,                              #13345E
      djsir_cool_grey_1                              #d9d9d6
    )
  } else if (n == 7) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_royal_blue,                              #13345E
      djsir_cool_grey_1,                             #d9d9d6
      djsir_persimmon                                #E35205
    )
  } else if (n == 8) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_royal_blue,                              #13345E
      djsir_cool_grey_1,                             #d9d9d6
      djsir_persimmon,                               #E35205
      djsir_black_rock                               #343641
    )
  } else if (n == 9) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_royal_blue,                              #13345E
      djsir_cool_grey_1,                             #d9d9d6
      djsir_persimmon,                               #E35205
      djsir_black_rock,                              #343641
      djsir_green                                    #69972C
    )
  } else if (n == 10) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_royal_blue,                              #13345E
      djsir_cool_grey_1,                             #d9d9d6
      djsir_persimmon,                               #E35205
      djsir_black_rock,                              #343641
      djsir_green,                                   #69972C
      djsir_dark_tangerine                           #FF9E1B
    )
  } else if (n == 11) {
    palette <- c(
      djsir_cobalt,                                  #004C97
      djsir_lima,                                    #78BE20
      djsir_bondi_blue,                              #009CA6
      djsir_electric_lime,                           #CEDC00
      djsir_royal_blue,                              #13345E
      djsir_cool_grey_1,                             #d9d9d6
      djsir_persimmon,                               #E35205
      djsir_black_rock,                              #343641
      djsir_green,                                   #69972C
      djsir_dark_tangerine,                          #FF9E1B
      djsir_cool_grey_11                            #343641
    )
  } else if (n > 11) {
    palette <- rep(djsir_palette, ceiling(n / length(djsir_palette)))[1:n]
     }

  palette
}

#' Title DJSIR wrapping function defining colour for the fill of a graph object
#'
#' @param ... arguments passed to `ggplot2::scale_*_manual()`
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mtcars, aes(x = mpg, fill = factor(carb))) +
#' geom_histogram() +
#' theme_djsir() +
#' scale_fill_djsir()
#'
#' p


scale_fill_djsir <- function(...) {

  ggplot2::discrete_scale(
    "fill",
    "DJSIR",
    djsir_pal,
    ...
  )
}

#' Title DJSIR function defining the colour of a graph object
#'
#' @param ... arguments passed to `ggplot2::scale_*_manual()`
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg, col = factor(cyl))) +
#'      geom_point() +
#'      theme_djsir() +
#'      scale_colour_djsir()
#' p

scale_colour_djsir <- function(...){

  ggplot2::discrete_scale(
    "colour",
    "DJSIR",
    djsir_pal,
    ...
  )
}
