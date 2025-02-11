mtcars |>
  dplyr::as_tibble() |>
  dplyr::mutate(
    x = mpg * drat,
    y = log(wt)
  ) |>
  ggplot2::ggplot(
    ggplot2::aes(x, y)
  ) +
  ggplot2::geom_point() +
  ggplot2::theme_classic() +
  ggplot2::labs(title = "High Value Analysis",
       subtitle = "That needs to be Reproducible -within reason",
       x = "Number of Toddler Interruptions",
       y = "Productivity Index")
