test_that("djsir axis functions return object of correct class", {
  expect_s3_class(
    djsir_y_continuous(),
    c("ggproto", "ScaleContinuousPosition")
  )

  expect_s3_class(
    djsir_x_continuous(),
    c("ggproto", "ScaleContinuousPosition")
  )
})

library(ggplot2)
test_axes <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(colour = "black",
             size = 3) +
  theme_minimal() +
  djsir_y_continuous() +
  djsir_x_continuous() +
  labs(title = "Test that axis functions behave as expected")

test_that("djsir axis functions modify plot as expected", {
  vdiffr::expect_doppelganger("test_axes", test_axes)
})
