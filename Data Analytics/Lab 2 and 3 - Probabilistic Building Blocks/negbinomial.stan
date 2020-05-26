data {
    real alpha;
    real mean_;
    real phi;
}

generated quantities {
    real negcon = neg_binomial_rng(alpha, alpha/mean_);
    real negdisc = neg_binomial_2_rng(mean_, phi);

    real poissoncon = poisson_rng(negcon);
    real poissondisc = poisson_rng(negdisc);
}