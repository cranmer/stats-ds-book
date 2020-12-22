# Bias-Variance Tradeoff

One of the most important concepts in statistics and machine learning is the Bias-Variance tradeoff. 
Before we can discuss it, let's define a few concepts.

## The bias of an estimator

```{admonition} Bias of an estimator

The bias of an estimator, denoted $\textrm{bias}(\hat{\theta} \mid \theta)$, is defined as:

$$
\textrm{bias}(\hat{\theta} \mid \theta) = \mathbb{E}[\hat{\theta} \mid \theta ] - \theta = \mathbb{E}[\hat{\theta} - \theta \mid \theta ]  =\int (\hat{\theta}(x) - \theta) p(x | \theta) dx
$$

**Note** the bias isn't a single number, but a function of the true, unknown value of $\theta$. Sometimes the estimator is implicit and you may see the bias denoted $b(\theta)$, or the dependence on $\theta$ is left implicit and you may see it denoted $b(\hat{\theta})$.
```

If $\theta$ has several components, the expectations and bias are calculated per component.

```{admonition} Terminology 
If the bias is 0 for all values of $\theta$, the estimator is said to be **unbiased**.
```

Usually physicists would react poorly to a biased estimator. 
This is partially due to the fact that "bias" is a loaded term with negative connotations.
We will come back to this later... how bad is it if your estimator is biased? 


## The variance of an estimator

```{admonition} Variance of an estimator

The variance of an estimator uses the same definition as the variance of any random variable

$$
\textrm{var}(\hat{\theta} \mid \theta) = \mathbb{E}[\left( \hat{\theta} - \mathbb{E}[\hat{\theta}\mid \theta ] \right)^2 \mid \theta ] 
$$

**Note** the variance also depends on the true, unknown value of $\theta$.
```

If $\theta$ has several components, the notion of variance is generalized to [covariance](./correlation) as for any other multivariate random variable. 

Intuitively, we would like the variance of the estimator to be small
Interestingly, there is a theoretical lower bound on the variance of an estimator, which is called the [Cramér-Rao bound](./statistics/cramer-rao-bound).
Just because the variance of an estimator is small, doesn't mean that it's close to the true value. 
For instance, our straw man constant estimator $\hat{\theta}_\textrm{const} = \theta_0$ has zero variance, but it's not very userful. 

Note, this is closely connected to the idea of "precision" in the "accuracy vs. precision" dichotomy. 


## The mean squared error of an estimator

```{admonition} Mean squared error

The mean squared error of an estimator is defined by

$$
\textrm{MSE}(\hat{\theta} \mid \theta) = \mathbb{E}[\left( \hat{\theta} - \theta \right)^2 \mid \theta ] = \textrm{var}(\hat{\theta} \mid \theta)) + (\textrm{bias}(\hat{\theta} \mid \theta))^2
$$

**Note** the MSE also depends on the true, unknown value of $\theta$.
```

## The bias-variance tradeoff

```{admonition} Food for thought
:class: tip
Which is better:
 * an estimator $\hat{\theta}_1$ that always has smaller bias than another $\hat{\theta}_2$, 
 * the estimator $\hat{\theta}_2$ that is always "closer" to the true value than $\hat{\theta}_1$ (smaller MSE).
```

Note how the MSE decomposes into two terms, the variance and the squared bias. This is one manifestation of the bias-variance tradeoff. 
If you care about being close to the true value (smaller MSE), then you would be willing to trade a little bit of bias for a large reduction in variance. 
As we will see, Bayesian estimators are often biased, and in some cases the MLE is (asymptotically) unbiased, but has large variance. 
This is less of an issue when trying to infer a low-dimensional parameter $\theta$, but it becomes increasingly important as the dimensionality of $\theta$ increases.

```{important}
There's no reason to confine yourself to bias, variance, or MSE to characterize the quality of your estimator. You could consider the bias to be 100 times more important than the variance, $\textrm{var}(\hat{\theta} \mid \theta)) + 100*(\textrm{bias}(\hat{\theta} \mid \theta))^2$, or a non-linear function of these two terms, or something that doesn't explicitly involve bias or variance at all. 
We can generalize these notions with the notions of **loss** and **risk** in [Statistical decision theory](statistics/statistical_decision_theory).
```


## Asymptotic bias and variance

Often it is useful to think about the properties of estimators as you add more data or "in the limit of a lot of data". Those are informal concepts, that can be formalized by 
considering a sequence of estimators $\hat{\theta}_k$ with $k=1, \dots$ where for each $k$ the estimator takes as input $k$ iid observations $\{X_i\}_{i=1}^k$ with $X_i \sim p(X \mid \theta)$.
We can then study the *asymptotic limit*: 

$$
\lim_{k\to \infty} \textrm{SomeProperty}[\hat{\theta}_k \mid \theta ]
$$

```{admonition} Example:

Consider a Gaussian distribution $G(X|\mu,\sigma^2)$ and we wish to estimate the mean $\mu$ and variance $\sigma^2$ based on a dataset $\{x_i\}_{i=1}^N$.
This may seem like a boring example, and you may recognize the $N$ vs. $N-1$ from some previous classes, but there are two lessons here, so let's go through it. 

The maximum likelihood estimator for $\mu$ is given by

$$
\frac{\partial}{\partial \mu} \left( \sum_{i=1}^N -\log G(x_i | \mu, \sigma) \right) \bigg\rvert_{\hat{\mu}} = 0
$$

which leads to the familiar sample mean $\hat{\mu}_\textrm{MLE} = \bar{x} = \frac{1}{N}  \sum_{i=1}^N x_i$.

And if we think of the Gaussian parameterized in terms of the variance $\sigma^2$, instead of the standard deviation $\sigma$, we find

$$
\frac{\partial}{\partial \sigma^2} \left( \sum_{i=1}^N -\log G(x_i | \mu, \sigma) \right) \bigg\rvert_{\widehat{\sigma^2}} = 0 &=& \frac{\partial}{\partial\sigma^2} \sum_{i=1}^N  \left(  \frac{(x_i - \mu)^2}{2\sigma^2} + \log \sqrt{2 \pi \sigma^2} \right) \\
&=& \sum_{i=1}^N \left( -\frac{(x_i - \mu)^2}{2(\sigma^2)^2} + \frac{1}{2\sigma^2} \right)
$$

Therefore

$$
\widehat{\sigma^2}_\textrm{MLE} = S_N^2 = {\color{#DC2830}{\frac{1}{N}}} \sum_{i=1}^N (x_i - \bar{x})^2
$$

(Note the MLE is equivariant to reparameterization, so we could have done $\partial/\partial \sigma)$ and we would arrive at the same answer.)

You may remember that this estimator is biased and that it is Better™ to use instead the unbiased estimator for the variance that includes [Bessel's correction](https://en.wikipedia.org/wiki/Bessel%27s_correction)

$$
\widehat{\sigma^2}_\textrm{Bessel} = S^2 = {\color{#0271AE}{\frac{1}{N-1}}} \sum_{i=1}^N (x_i - \bar{x})^2
$$

You may have even had some points deducted on homework or tests because you forgot to use $N-1$ instead of $N$. And you may also remember thinking "That's silly! What's the big deal, $\color{#DC2830}{\frac{1}{N}}$ and $\color{#0271AE}{\frac{1}{N-1}}$ are essentially the same for large $N$. And you would be right.
That's the statement that the maximum likelihood estimator is **asymptotically unbiased**. 

You may have also wanted to estimate the standard deviation and used the seemingly obvious corrolary $\sqrt{ \color{#0271AE}{\frac{1}{N-1}} \sum_{i=1}^N (x_i - \bar{x})^2}$, being careful to use $N-1$ like a diligent student of [poorly taught statistics](https://www.google.com/search?tbm=isch&as_q=standard+deviation+N-1). However, that seemingly obvious corrolary is not actually motivated. While ${\color{#0271AE}{\frac{1}{N-1}}} \sum_{i=1}^N (x_i - \bar{x})^2$ is an unbiased estimator for the variance $\sigma^2$, $\sqrt{ \color{#0271AE}{\frac{1}{N-1}} \sum_{i=1}^N (x_i - \bar{x})^2}$ is a biased estimator of $\sigma$!
```


```{warning}
 The bias estimator is not equivariant to transformation of the estimator/estimand. This follows from the transformation properties of the the distribution when changing random variables, the Jacobian factor influences the mean.  
```

```{caution}
What convention is used in `np.var(x)` and `np.std(x)`? Check the documentation [numpy.std](https://numpy.org/doc/stable/reference/generated/numpy.std.html#numpy.std) and [numpy.var](https://numpy.org/doc/stable/reference/generated/numpy.var).
```
