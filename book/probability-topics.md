# Probability Topics

1. Probability models
    1. Probability denstiy functions
    1. Classic distributons
        1. Bernouli 
        1. Binomial
        1. Poisson
        1. Gaussian
        1. Chi-Square
        1. Exponential family
    1. Multivariate distributions
        1. Independence
        1. Covariance
        1. Conditional distributions
        1. Marginal distributions
        1. Graphical Models
        1. Copula
    1. Information theory
        1. Entropy
        1. Mutual information
        1. KL divergence
        1. cross entropy
    1. Divergences
        1. KL Divergence
        1. Fisher distance
        1. Optimal Transport
        1. Hellinger distance
        1. f-divergences
        1. Stein divergence
    1. Implicit probabity models
        1. Simulators
        1. Probabilistic Programming
            1. pyro
            1. pyprob
1. Likelihood function
1. [Axioms of probability](https://en.wikipedia.org/wiki/Probability_axioms)
    1. [Probability Space](https://en.wikipedia.org/wiki/Probability_space)
1. Transformation properties
    1. Change of variables
        1. Propagation of errors
    1. Reparameterization
1. Bayes Theorem
    1. Subjective priors
    1. Emperical Bayes
    1. Jeffreys' prior
    1. Unfiform priors
    1. Reference Priors
    1. Transformation Properties
1. Convolutions and the Central Limit Theorem
    1. Binomial example
    1. Convolutions in Fourier domain
1. [Extreme Value Theory](https://en.wikipedia.org/wiki/Extreme_value_theory)
    1. Weibull law
    1. Gumbel law
    1. Fréchet Law




Some references:
 * [Probability and Statistics](https://cims.nyu.edu/~cfgranda/pages/DSGA1002_fall17/index.html)
 * [Inference and Representation](https://inf16nyu.github.io/home/)
 * [Big Data 2015](https://www.vistrails.org/index.php/Course:_Big_Data_2015)
 * [Machine Learning](https://davidrosenberg.github.io/ml2017/#resources)
     * [PRML](https://github.com/cranmer/PRML)
 * [Stanford Prob](http://cs229.stanford.edu/section/cs229-prob.pdf) 

 ```{math}
:label: autoregressive
p(x_1, \dots, x_T) = \prod_{t=1}^T p(x_t \mid x_{<t})
```

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">The 10 most helpful *free* online machine learning courses, via <a href="https://twitter.com/chipro?ref_src=twsrc%5Etfw">@chipro</a><br><br>Full thread: <a href="https://t.co/RUcG2AL1uC">https://t.co/RUcG2AL1uC</a><a href="https://twitter.com/hashtag/MondayMotivation?src=hash&amp;ref_src=twsrc%5Etfw">#MondayMotivation</a> <a href="https://t.co/Fd3sN2u7UV">pic.twitter.com/Fd3sN2u7UV</a></p>&mdash; MIT CSAIL (@MIT_CSAIL) <a href="https://twitter.com/MIT_CSAIL/status/1295391687783718914?ref_src=twsrc%5Etfw">August 17, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>