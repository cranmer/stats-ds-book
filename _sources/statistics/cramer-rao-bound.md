# Cramér-Rao Bound

The [Cramér-Rao Bound](https://en.wikipedia.org/wiki/Cramér–Rao_bound) is a fascinating result. 
If we just start by thinking of estimators as functions of the data that try to estimate the parameter, you might imagine that there if you work really hard you might be able to come up with a better estimator. The Cramér-Rao bound says there is a limit to how well you can do. It's a limit on the (co)variance of the estimator and it is based on information theoretic quantities for the statistical model $p_X(X|\theta)$. 

## Univariate case 

First let's consider the univariate case where $\theta \in \mathbb{R}$. First we will consider the special case of unbiased estimators, and then generalized to estimators that may be biased. 

### Unbiased estimator

In the unbiased case, the Cramér-Rao states

$$
\operatorname{var}[\hat{\theta} \mid \theta] \ge \frac{1}{I(\theta)}
$$

where $I(\theta)$ is the Fisher information 

$$
I(\theta) = \mathbb{E}_{p(X|\theta)}\left[ \left ( \frac{\partial}{\partial \theta} \log p(X \mid \theta) \right )^2 \right ] = \int \left ( \frac{\partial}{\partial \theta} \log p(x \mid \theta) \right )^2 p(x|\theta) dx
$$

Under some mild assumptions, you can rewrite this Fisher information as 

$$
I(\theta) = \mathbb{E}_{p(X|\theta)}\left[ -\frac{\partial^2}{\partial \theta^2} \log p(X \mid \theta)  \right ] 
$$

```{admonition} Terminology
The **efficiency** of an unbiased estimator 
$\hat{\theta}$ measures how close this estimator's variance comes to this lower bound; estimator efficiency is defined as

$$
{\displaystyle e({\hat {\theta }})={\frac {I(\theta )^{-1}}{\operatorname {var} ({\hat {\theta }})}}}
$$

```
```{admonition} Terminology
The term $\frac{\partial}{\partial \theta} \log p(X \mid \theta)$ is called the **score function**.
```

```{admonition} Example
Consider the straw man estimator that always returns a constant value $\hat{\theta}_{const} = \theta_0$. The variance of the estimator is 0!
The $b(\theta_0)=0$ as well, is this a violation of the ramér-Rao Bound? While the bias is 0 at that particular point, it's biased everywhere else $b(\theta_0)=\theta_0 - \theta$, so this form of the bound isn't applicable, we need a generalization that works with biased estimators.
```


### General case with biased estimators

$$
{\displaystyle \operatorname {var} \left({\hat {\theta }}\right)\geq {\frac {[1+\color{#DC2830}{\frac{d b(\theta )}{d\theta}} ]^{2}}{I(\theta )}}.}
$$

where we use $b(\theta )$ as shorthand for $\operatorname{bias}(\hat{\theta} \mid \theta)$ to emphasize the dependence on $\theta$.

```{admonition} Example continued
The resolution to the example with the straw man estimator that always returns a constant value $\hat{\theta}_\textrm{const} = \theta_0$ involves the generalization of the Cramér-Rao Bound? The bias $b(\theta_0)=\theta_0 - \theta$, so the derivative is $\color{#DC2830}{\frac{d b(\theta )}{d\theta}}=-1$, and the generalized bound is $\displaystyle \operatorname {var} \left({\hat {\theta }}\right) \geq 0$, so all is well.
```

## Multivariate case

There is a corresponding formulation for the multivariate case where $\theta \in \mathbb{R}^n$.

### Unbiased estimator

Let's consider the unbiased case first, and generalize variance to covariance. We have

$$
\operatorname{cov}[\hat{\theta}_i, \hat{\theta}_j \mid \theta] \ge I^{-1}_{ij}(\theta)
$$

where $I^{-1}_{ij}(\theta)$ is the inverse of the Fisher information matrix

$$
I_{ij}(\theta) &=& \mathbb{E}_{p(X|\theta)}\left[ \frac{\partial}{\partial \theta_i} \log p(X \mid \theta) \frac{\partial}{\partial \theta_j} \log p(X \mid \theta)  \right ] \\
&=& \int \left[ \frac{\partial}{\partial \theta_i} \log p(x \mid \theta) \frac{\partial}{\partial \theta_j} \log p(x \mid \theta)  \right ] p(x|\theta) dx
$$

Under some mild assumptions, you can rewrite this Fisher information matrix as 

$$
I_{ij}(\theta) = \mathbb{E}_{p(X|\theta)}\left[ -\frac{\partial^2}{\partial \theta_i\partial \theta_j} \log p(X \mid \theta)  \right ] 
$$

```{tip}
The generalization of the score function $\nabla_\theta \log p(X \mid \theta)$ is now a vector.
```

### General case with biased estimators

There is also a corresponding generalization for biased, multivariate estimators. 
The general form of the Cramér–Rao bound then states that the covariance matrix of ${\boldsymbol  {\hat\theta}}(X)$ satisfies

$$
{\displaystyle \operatorname {cov}_{\boldsymbol {\theta }}\left({\boldsymbol {\hat\theta}}(X)\right)\geq {\frac {\partial {\boldsymbol {\psi }}\left({\boldsymbol {\theta }}\right)}{\partial {\boldsymbol {\theta }}}}[I\left({\boldsymbol {\theta }}\right)]^{-1}\left({\frac {\partial {\boldsymbol {\psi }}\left({\boldsymbol {\theta }}\right)}{\partial {\boldsymbol {\theta }}}}\right)^{T}}
$$

where ${\boldsymbol  {\psi }}({\boldsymbol  {\theta })}$ denotes the expectation ${\displaystyle \operatorname {E} [{\boldsymbol {\hat\theta}}(X)]}$.


## Connections

### Asymptotic properties of maximum likelihood estimators

Importantly, [under some regularity conditions maximum likelihood estimators are **asymptotically unbiased and efficient** ](https://en.wikipedia.org/wiki/Maximum_likelihood_estimation) (ie. they saturate the inequality). 

### Information Geometry

Later we will connect the Fisher information matrix to the topic of [Information Geometry](statistics/information-geometry), where we can interpret $I_{ij}(\theta)$ as the metric tensor for a statistical manifold, where $\theta$ are coordinates on the manifold. This is nicely connected to General Relativity, and we will see that the geometry is intrensic (equivariant to change of coordinates) and distances are diffeomorphism invariant. 

### Sufficiency and the Expoential Family

We will also see connections to the concept of [Sufficiency](statistics/sufficiency) and [the exponential family](distributions/exponential-family).

