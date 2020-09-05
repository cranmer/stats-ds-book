# Expectation

The expected value of a function $g(x)$ is defined by

$$
\mathbb{E}[g(x)] := \int g(x) p_X(x) dx
$$

Note in physics, one would often write $\langle g \rangle$ for the expected value of $g$. 

Note, sometimes one writes $\mathbb{E}_{p_X}$ to make the distribution $p_X$ more explicit. 

## Expectations with emperical data

If $\{x_i\}_{i=1}^N$ is a dataset (emperical distribution) with independent and identically distributed (iid) $x_i \sim p_X$, then one can estimate the expectation with 

$$
\mathbb{E}[g(x)] \approx \frac{1}{N} \sum_{i=1}^N g(x_i)
$$