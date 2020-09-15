# Bayes' Theorem

Earlier we discussed [**conditional probability**](./conditional) for an event $A$ **given** another event $B$: $P(A \mid B)$. 
Examples: 

 * the probability to have $N$ neutrons in an atom given an atomic number of $Z$ [plot](https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Isotopes_and_half-life.svg/1280px-Isotopes_and_half-life.svg.png)

 * the distribution of height $h$ given that you are a professional basketball player 

 * the disribution of some generic data $X$ given a theory with parameters $\theta$

 * the probability of testing negative for COVID19 given that you actually have COVID19


Bayes' rule allows us to invert the relationship from $P(A \mid B)$ to $P(B \mid A)$. 
It can also be thought of as updating our **prior probability** for $B$ to a **posterior probability** for $B$ given that we observe $A$. 


```{admonition} Theorem (Bayes’ rule)
For any events $A$ and $B$ in a probability space $(\Omega,\mathcal{F},P)$

$$
P(B \mid A) = \frac{P (A \mid B)P (B)}{P(A)}
$$
as long as $P (A) > 0$.
```

In our examples this would turn into: 

 * the probability for an atom to have an atomic number of $Z$ given that it has $N$ neutrons 

 * the probability to be a professional basketball player given your height is $h$

 * the probability disribution for a theory's parameters $\theta$ given data $X$

 * the probability of actually having COVID19 given that you tested negative for COVID19
 

## Bayes' rule in pictures

```{figure} ./assets/Bayes-theorem-in-pictures.png

These images are adapted from lectures by Bob Cousins.

```




 ## Breaking down the terms

 Each of the terms in Bayes' rule has a name and interpretation. For this I think it is useful to think not of generic $A$ and $B$, but to think of some theory of the Universe with parameters $\theta$ (like the Higgs mass or the cosmological constant) and the predictions for what the data $X$ would look like given $\theta$. 

  * $p(X \mid \theta)$: the **likelihood**: the probability distributon of the data $X$ given the theoretical parameters $\theta$
  * $p(\theta)$: the **prior probability** for the parameter $\theta$ 
  * $p(\theta \mid X)$: the **posterior probability** of $\theta$ given $X$
  * $p(X)$: the normalizing constant often referred to as the **evidence**.


## An example:

To be concrete, consider this [plot from the ATLAS experiment at the Large Hadron Collider](https://indico.cern.ch/event/197461/) from July 2012. It shows the distribution of a random variable $m_{4l}$) given three different hypothesized Higgs boson masses $m_H=(125, 150, 190)$ GeV. You can think of the data as $m_{4l}=X$ and the parameter as $m_H=\theta$. 

 ```{figure} ./assets/atlas-higgs-2012.png
 :width: 60%

A [plot from the ATLAS experiment at the Large Hadron Collider](https://indico.cern.ch/event/197461/) from July 2012. It shows histograms for the observed data (black dots) as well as the expected distribution for a random variable denoted $m_{4l}$ given different hypothesized Higgs boson basses $m_H$ (blue, orange, grey, which are stacked on top of the common $m_H$-independent backgrounds red+purple). 

 ```

