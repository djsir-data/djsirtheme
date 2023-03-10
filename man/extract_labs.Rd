% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_labs.R
\name{extract_labs}
\alias{extract_labs}
\title{Function to extract labels from ggplot2 / patchwork objects}
\usage{
extract_labs(plot, lab_type = c("title", "subtitle", "caption"))
}
\arguments{
\item{plot}{ggplot2 / patchwork object}

\item{lab_type}{Label type to extract - such as "title", "subtitle", or "caption"}
}
\value{
A length-one character vector
}
\description{
Function to extract labels from ggplot2 / patchwork objects
}
\examples{

\dontrun{
library(ggplot2)

plot1 <- ggplot(economics, aes(x = date, y = unemploy)) +
  geom_point() +
  labs(subtitle = "Plot 1 subtitle")

# Extract the subtitle from plot2
extract_labs(plot1, "subtitle")

# Create a second plot
plot2 <- ggplot(economics, aes(x = date, y = uempmed)) +
  geom_point() +
  labs(subtitle = "Plot 2 subtitle")

# Now combine these plots using patchwork
comb_plots <-
  patchwork::wrap_plots(plot1 + plot2) +
  patchwork::plot_annotation(title = "Combined plot title",
                  caption = "Data source")

extract_labs(comb_plots, "title")
}
}
