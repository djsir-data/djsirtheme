#' Title Definition of defaults for individual geoms in a style guide-consistent way
#'
#' @importFrom ggplot2 update_geom_defaults .pt

djsirify_geom_defaults <- function() {

  update_geom_defaults(
    "point",
    list(
      colour = djsirtheme::djsir_royal_blue,
      size = 6 / .pt
    )
  )
  update_geom_defaults(
    "bar",
    list(
      colour = "white",
      fill = djsirtheme::djsir_royal_blue,
      size = 0.75 / .pt
    )
  )
  update_geom_defaults(
    "col",
    list(
      colour = "white",
      fill = djsirtheme::djsir_royal_blue,
      size = 0.75 / .pt
    )
  )
  update_geom_defaults(
    "line",
    list(
      colour = djsirtheme::djsir_royal_blue,
      size = 3 / .pt
    )
  )
  update_geom_defaults(
    "text",
    list(
      colour = "black",
      size = 18 / .pt
    )
  )
  update_geom_defaults(
    "smooth",
    list(
      colour = djsirtheme::djsir_royal_blue,
      fill = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "path",
    list(
      colour = djsirtheme::djsir_royal_blue,
      size = 3 / .pt
    )
  )

  update_geom_defaults(
    ggrepel::GeomTextRepel,
    list(
      size = 18 / .pt,
      colour = "black"
    )
  )

  update_geom_defaults(
    ggrepel::GeomLabelRepel,
    list(
      size = 18 / .pt,
      fill = "white",
      colour = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "label",
    list(
      size = 18 / .pt,
      fill = "white",
      colour = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "area",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "density",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "dotplot",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "polygon",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "path",
    list(col = djsirtheme::djsir_royal_blue)
  )

  update_geom_defaults(
    "ribbon",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "rect",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "boxplot",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "crossbar",
    list(
      fill = djsirtheme::djsir_royal_blue,
      col = djsirtheme::djsir_royal_blue
    )
  )

  update_geom_defaults(
    "errorbar",
    list(col = djsirtheme::djsir_royal_blue)
  )

  update_geom_defaults(
    "linerange",
    list(col = djsirtheme::djsir_royal_blue)
  )

  update_geom_defaults(
    "pointrange",
    list(col = djsirtheme::djsir_royal_blue)
  )

  update_geom_defaults(
    "tile",
    list(
      col = "white",
      fill = djsirtheme::djsir_royal_blue
    )
  )
}
