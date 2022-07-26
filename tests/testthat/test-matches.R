testthat::test_that(
  desc = "uss_make_matches returns a tibble",
  code = {
    # use the function
    italy <- uss_make_matches(data_engsoc = engsoccerdata::italy,
                              country = "Italy"
                              )

    testthat::expect_true(object = tibble::is_tibble(italy))
  }
)


testthat::test_that(
  desc = "uss_make_matches returns proper column names",
  code = {
    # use the function
    italy <- uss_make_matches(data_engsoc = engsoccerdata::italy,
                              country = "Italy"
                              )

    testthat::expect_named(
      object = italy,
      expected = c("country", "tier", "season", "date",
                   "home", "visitor", "goals_home",
                   "goals_visitor"
                   )
    )
  }
)


testthat::test_that(
  desc = "uss_make_matches returns proper country column",
  code = {
    # use the function
    italy <- uss_make_matches(data_engsoc = engsoccerdata::italy,
                              country = "Italy"
                              )

    testthat::expect_identical(
      object = base::unique(italy$country),
      expected = "Italy"
    )
  }
)


testthat::test_that(
  desc = "uss_make_matches returns the tier column as a factor",
  code = {
    # use the function
    italy <- uss_make_matches(data_engsoc = engsoccerdata::italy,
                              country = "Italy"
                              )

    testthat::expect_s3_class(
      object = italy$tier,
      class = "factor"
    )

    testthat::expect_snapshot(dplyr::glimpse(italy))
  }
)

