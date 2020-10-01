# Bias-Variance Tradeoff

One of the most important concepts in statistics and machine learning is the Bias-Variance tradeoff. 
Before we can discuss it, let's define a few concepts.

## The bias of an estimator

```{admonition} Bias of an estimator

The bias of an estimator, denoted $b(\theta)$ is defined as:

$$
\textrm{bias}(\hat{\theta} \mid \theta) = \mathbb{E}[\hat{\theta} \mid \theta ] - \theta = \mathbb{E}[\hat{\theta} - \theta \mid \theta ]  =\int (\hat{\theta}(x) - \theta) p(x | \theta) dx
$$

**Note** the bias isn't a single number, but a function of the true, unknown value of $\theta$.
```

If $\theta$ has several components, the expectations and bias are calculated per component.

## The variance of an estimator

```{admonition} Variance of an estimator

The variance of an estimator uses the same definition as the variance of any random variable

$$
\textrm{var}(\hat{\theta} \mid \theta) = \mathbb{E}[\left( \hat{\theta} - \mathbb{E}[\hat{\theta}\mid \theta ] \right)^2 \mid \theta ] 
$$

**Note** the variance also depends on the true, unknown value of $\theta$.
```

If $\theta$ has several components, the notion of variance is generalized to covariance as for any other multivariate random variable. 

## The mean squared error of an estimator

```{admonition} Mean squared error

The mean squared error of an estimator is defined by

$$
\textrm{MSE}(\hat{\theta} \mid \theta) = \mathbb{E}[\left( \hat{\theta} - \theta \right)^2 \mid \theta ] = \textrm{var}(\hat{\theta} \mid \theta)) + (\textrm{bias}(\hat{\theta} \mid \theta))^2
$$

**Note** the MSE also depends on the true, unknown value of $\theta$.
```

## Asymptotic bias and variance

Often it is useful to think about the properties of estimators as you add more data, or "in the limit of a lot of data". Those are informal concepts, that can be formalized by 
considering a sequence of estimators $\hat{\theta}_k$ with $k=1, \dots$ where for each $k$ the estimator takes as input $k$ iid observations $\{X_i\}_{i=1}^k$ with $X_i \sim p(X \mid \theta)$.
We can then study the *asymptotic limit*: 

$$
\lim_{k\to \infty} \textrm{SomeProperty}[\hat{\theta}_k \mid \theta ]
$$

