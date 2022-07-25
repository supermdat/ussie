
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/supermdat/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/supermdat/ussie/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/supermdat/ussie/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/supermdat/ussie/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

This is a demo package for the “Building Tidy Tools” workshop at
rstudio::conf(2022L). It allows you to work with European soccer league
data supplied by the engsoccerdata package (Curley 2016).

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("supermdat/ussie")
```

## Example

This is a basic example which shows you how to obtain data from the
Italian soccer league:

``` r
library(ussie)

italy <- uss_make_matches(data_engsoc = engsoccerdata::italy,
                          country = "Italy"
                          )

dplyr::glimpse(italy)
#> Rows: 25,404
#> Columns: 8
#> $ country       <chr> "Italy", "Italy", "Italy", "Italy", "Italy", "Italy", "I…
#> $ tier          <fct> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
#> $ season        <int> 1934, 1934, 1934, 1934, 1934, 1934, 1934, 1934, 1934, 19…
#> $ date          <date> 1934-09-30, 1934-09-30, 1934-09-30, 1934-09-30, 1934-09…
#> $ home          <chr> "Lazio Roma", "Torino FC", "Sampierdarenese", "SSC Napol…
#> $ visitor       <chr> "US Livorno", "Unione Triestina", "Bologna FC", "US Ales…
#> $ goals_home    <int> 6, 3, 2, 0, 4, 0, 3, 1, 1, 1, 2, 4, 2, 2, 3, 2, 2, 2, 0,…
#> $ goals_visitor <int> 1, 1, 1, 1, 1, 2, 0, 2, 1, 1, 1, 0, 2, 1, 1, 0, 1, 1, 1,…
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.
