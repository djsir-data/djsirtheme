test_that("scale_*_djsir() wrappers work", {
  expect_s3_class(scale_colour_djsir(13), "ggproto")
  expect_s3_class(scale_fill_djsir(5), "ggproto")
})


# Colour pyramid ----
# The pyramid shows the default colours and their ordering
library(dplyr, warn.conflicts = F)
library(ggplot2, warn.conflicts = F)
make_col_tibble <- function(n) {
  dplyr::tibble(
    col = suppressWarnings(djsir_pal(n)),
    order = c(1:n),
    n = n
  )
}

djsir_colours <- lapply(c(1:11), make_col_tibble) %>%
  dplyr::bind_rows()

djsir_colours$col <- factor(djsir_colours$col)

djsir_colours <- djsir_colours %>%
  dplyr::mutate(n_desc = dplyr::if_else(n == 1, "  1", paste0("  ", n)))

pyramid <- djsir_colours %>%
  ggplot(aes(
    x = reorder(n_desc, -n),
    y = order,
    fill = col
  )) +
  geom_tile(col = "white", linewidth = 1) +
  scale_fill_manual(values = levels(djsir_colours$col)) +
  coord_flip(expand = FALSE, ylim = c(0, 13)) +
  theme_djsir() +
  theme(
    panel.grid = element_blank(),
    axis.title = element_blank(),
    axis.ticks = element_blank(),
    axis.line = element_blank(),
    axis.text.x = element_blank(),
    legend.position = "none"
  ) +
  labs(title = "These are the colours of the djsir palette")

test_that("Colour pyramid is unchanged", {
  vdiffr::expect_doppelganger("pyramid",
                              pyramid
  )
})

test_that("djsir_pal.R works for more than 11 colours", {
  # create data frame with 14 factors
  data14 <- economics %>%
    filter(uempmed > 20.5)

  # create scatter graph with 14 colours
  p <- ggplot(data14, aes(x = pce, y = date, col = factor(uempmed))) +
    geom_point() +
    theme_djsir() +
    scale_colour_djsir()

  expect_s3_class(p, "gg")
  expect_equal(length(unique(data14$uempmed)), 14)
  expect_error(print(p), NA)

})
