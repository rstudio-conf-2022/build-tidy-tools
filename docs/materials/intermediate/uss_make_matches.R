uss_make_matches <- function(data_engsoc) {
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      tier = as.integer(tier),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}
