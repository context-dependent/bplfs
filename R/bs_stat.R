#' @title quality measures for bootstrap estimates
#' @rdname bs_stat
bs_out <- function(est_fw, est_bs) {
    bs_var <- mean((est_bs - est_fw)^2)
    bs_sd <- sqrt(bs_var)

    data.frame(
        est = est_fw,
        var = bs_var,
        se = bs_sd
    )
}

#' @title survey mean with bootstrap sampling variance and standard error
#' @description
#'     designed for use in a grouped dplyr::summarize() context
#'     where bootstrap weights are stored as an array column
#' @rdname bs_stat
#' @param x :number vector of survey data.
#' @param bootstrap_weights :array of bootstrap replicate weights.
#' @param final_weights :vector of final weights.
#' @return a data.frame with columns est, var, and se.
#' @export
bs_mean <- function(x, bootstrap_weights, final_weights) {
    est_fw <- sum(final_weights * x) / sum(final_weights)
    est_bs <- colSums(bootstrap_weights * x) / colSums(bootstrap_weights)
    bs_out(est_fw, est_bs)
}

#' @title survey total with bootstrap sampling variance and standard error
#' @description
#'     designed for use in a grouped dplyr::summarize() context
#'     where bootstrap weights are stored as an array column
#' @rdname bs_stat
#' @param bootstrap_weights :array of bootstrap replicate weights.
#' @param final_weights :vector of final weights.
#' @return a data.frame with columns est, var, and se.
#' @export
bs_total <- function(bootstrap_weights, final_weights) {
    est_fw <- sum(final_weights)
    est_bs <- colSums(bootstrap_weights)
    bs_out(est_fw, est_bs)
}
