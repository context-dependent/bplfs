#' @title Sample poisson factors for simulated bootstrap weights
#' @rdname generate_bootstrap_weights
sample_poisson_factors <- function(k) {
    sample(c(-1, 1), k, replace = TRUE)
}

#' @title initialize uncalibrated bootstrap replicate weights
#' @rdname generate_bootstrap_weights
generate_replicates <- function(final_weight, n_reps) {
    k <- length(final_weight)
    adjustment_factors <- final_weight * sqrt((final_weight - 1) / final_weight)

    replicate(
        n_reps,
        final_weight + sample_poisson_factors(k) * adjustment_factors,
        simplify = "array"
    )
}

#' @title Calibrate uncalibrated bootstrap replicate weights
#' @rdname generate_bootstrap_weights
calibrate_weights <- function(uncalibrated_weights, final_weight, domains) {
    domain_indices <- split(seq_len(nrow(uncalibrated_weights)), domains)
    domain_fw_totals <- domain_indices |>
        sapply(function(x) sum(final_weight[x]))
    domain_bs_totals <- domain_indices |>
        sapply(function(x) colSums(uncalibrated_weights[x, ]))
    domain_scaling_factors <- domain_fw_totals / t(domain_bs_totals)

    uncalibrated_weights * domain_scaling_factors[domains, ]
}

#' @title Calculate AGE_TABS for LFS PUMF data
#' @rdname generate_bootstrap_weights
#' @param age_6 :factor AGE_6 variable.
#' @param age_12 :factor AGE_12 variable.
#' @return a factor AGE_TABS variable.
#' @export
calculate_age_tabs <- function(age_6, age_12) {
    age_tabs_base <- dplyr::case_when(
        age_6 %in% c("15 to 16 years", "17 to 19 years") ~ age_6,
        TRUE ~ age_12
    )
    forcats::fct_collapse(
        age_tabs_base,
        "35 to 44 years" = c("35 to 39 years", "40 to 44 years"),
        "45 to 54 years" = c("45 to 49 years", "50 to 54 years")
    )
}

#' @title Generate bootstrap weights for LFS PUMF data
#' @rdname generate_bootstrap_weights
#' @param d :data.frame (labelled) LFS PUMF data.
#' @param n_reps :integer number of bootstrap replicates to generate.
#' @return a (n_reps by nrow(d)) array of bootstrap weights.
#' @export
generate_bootstrap_weights <- function(d, n_reps) {
    uncalibrated_weights <- generate_replicates(d$FINALWT, n_reps)
    age_tabs <- calculate_age_tabs(d$AGE_6, d$AGE_12)
    domains <- interaction(d$SURVMNTH, d$PROV, d$SEX, age_tabs)

    calibrate_weights(uncalibrated_weights, d$FINALWT, domains)
}
