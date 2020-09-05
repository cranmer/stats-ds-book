# Covariance


$$
\textrm{cov} (X,Y)=\mathbb{E} {{\big [}(X-\mathbb{E} [X])(Y-\mathbb{E} [Y]){\big ]}}
$$


$$
{\displaystyle {\begin{aligned}\textrm{cov} (X,Y)&=\mathbb {E} \left[\left(X-\mathbb {E} \left[X\right]\right)\left(Y-\mathbb {E} \left[Y\right]\right)\right]\\&=\mathbb {E} \left[XY-X\mathbb {E} \left[Y\right]-\mathbb {E} \left[X\right]Y+\mathbb {E} \left[X\right]\mathbb {E} \left[Y\right]\right]\\&=\mathbb {E} \left[XY\right]-\mathbb {E} \left[X\right]\mathbb {E} \left[Y\right]-\mathbb {E} \left[X\right]\mathbb {E} \left[Y\right]+\mathbb {E} \left[X\right]\mathbb {E} \left[Y\right]\\&=\mathbb {E} \left[XY\right]-\mathbb {E} \left[X\right]\mathbb {E} \left[Y\right],\end{aligned}}}
$$


## Correlation coefficient

[Correlation coefficient](https://en.wikipedia.org/wiki/Pearson_correlation_coefficient)

$$
{\displaystyle \rho _{X,Y}={\frac {\textrm{cov} (X,Y)}{\sigma _{X}\sigma _{Y}}}},
$$

where $\sigma_X^2 = \textrm{cov}(X,X)$ and $\sigma_Y^2 = \textrm{cov}(Y,Y)$

## With empirical data

We can estimate the covariance of the parent distribution $p_{XY}$ with the sample covariance, using the sample mean in place of the  expectation $\mathbb{E}_{p_X}$. 