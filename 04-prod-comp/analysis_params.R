# exception_dists <- tribble(
#   ~dist_name, ~dist_fun, ~num_samples,
#   # "zipf_first", exception_interleaved_zipf(0), 1,
#   # "zipf_half", exception_interleaved_zipf(0.5), 1,
#   # "first", exception_first, 1,
#   "zipf", exception_interleaved_zipf(1), 1,
#   "uniform", exception_uniform, 20
#   # "uniform", exception_interleaved_uniform(), 1
#   # "s_0.01", exception_skewed(0.01), 10,
#   # "s_0.1", exception_skewed(0.1), 10,
#   # "s_0.5", exception_skewed(0.5), 10
# )

max_prop <- 0.8 # maximum proportion of exceptions
# freq_fun <- freq_zipf # token frequency distribution
# scoring_fun <- get_joint_simple # PR scoring function

# ------------------
# threshold analysis
# ------------------

# numbers of types
threshold_min_n <- 10
threshold_max_n <- 100
threshold_step_n <- 1
threshold_ns <- seq(threshold_min_n, threshold_max_n, threshold_step_n)

prod_cutoff <- 0.5 # minimum probability of target transformation for productivity
# bm_num_trans <- threshold_max_n # number of transformations for PR base measure
# stop_method <- "equal_stop" # PR map search stopping criterion
# i_prop <- 0.5 # binary search split point

# threshold_ds <- c(0, 1)
# threshold_b <- find_alpha(threshold_max_n, threshold_max_n)
threshold_rule_costs <- c(0, 1, 2, 4, 8)

# ----------------------------
# productivity values analysis
# ----------------------------

fixed_n <- threshold_max_n
fixed_e_min <- 1
fixed_e_max <- max_prop * fixed_n
fixed_e_step <- 1
# fixed_es <- seq(fixed_e_min, fixed_e_max, fixed_e_step)
fixed_es <- c(1:9, seq(10, fixed_e_max, fixed_e_step))
# fixed_rule_cost <- 0
# num_samples <- 10

# fixed_b <- find_alpha(fixed_n, fixed_n)
fixed_rule_costs <- c(0, 1, 2, 4, 8)
# fixed_ds <- c(0, 0.5, 1)
