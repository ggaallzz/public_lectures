data {
    real alpha;
    real beta;
}

generated quantities {
    real gamma = gamma_rng(alpha, beta);
    real invgamma = inv_gamma_rng(alpha, beta);
}