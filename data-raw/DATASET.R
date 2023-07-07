## code to prepare `DATASET` dataset goes here

library(bpcandata)

years <- 2018:2022

fetch_lfs_pumf(years, cache_dir = "data-raw", refresh_cache = FALSE)

lfs_pumf_2018__raw <- read_lfs_pumf(dir = "data-raw/2018")
lfs_pumf_2018__labelled <- encode_lfs_factors(
    lfs_pumf_2018__raw$records,
    lfs_pumf_2018__raw$codebook
)

usethis::use_data(lfs_pumf_2018__raw)
usethis::use_data(lfs_pumf_2018__labelled)

lfs_pumf_2019__raw <- read_lfs_pumf(dir = "data-raw/2019")
lfs_pumf_2019__labelled <- encode_lfs_factors(
    lfs_pumf_2019__raw$records,
    lfs_pumf_2019__raw$codebook
)

usethis::use_data(lfs_pumf_2019__raw)
usethis::use_data(lfs_pumf_2019__labelled)

lfs_pumf_2020__raw <- read_lfs_pumf(dir = "data-raw/2020")
lfs_pumf_2020__labelled <- encode_lfs_factors(
    lfs_pumf_2020__raw$records,
    lfs_pumf_2020__raw$codebook
)

usethis::use_data(lfs_pumf_2020__raw)
usethis::use_data(lfs_pumf_2020__labelled)

lfs_pumf_2021__raw <- read_lfs_pumf(dir = "data-raw/2021")
lfs_pumf_2021__labelled <- encode_lfs_factors(
    lfs_pumf_2021__raw$records,
    lfs_pumf_2021__raw$codebook
)

usethis::use_data(lfs_pumf_2021__raw)
usethis::use_data(lfs_pumf_2021__labelled)

lfs_pumf_2022__raw <- read_lfs_pumf(dir = "data-raw/2022")
lfs_pumf_2022__labelled <- encode_lfs_factors(
    lfs_pumf_2022__raw$records,
    lfs_pumf_2022__raw$codebook
)

usethis::use_data(lfs_pumf_2022__raw)
usethis::use_data(lfs_pumf_2022__labelled)
