# Conditonal Probability

For now, a picture is worth a thousand words...

```{figure} ./assets/prob_cousins.png
:name: prob_cousins

A visual representation of events $A$ and $B$ in a larger sample space $\Omega$ [^footnote1].
```

```{figure} ./assets/pA_and_pB.png
:name: cousins_and

A visual representation of $P(A)$ and $P(B)$ [^footnote1].
```

And

```{figure} ./assets/pAandB.png
:name: cousins_and

A visual representation of $P(A \cap B)$ [^footnote1].
```

And

```{figure} ./assets/conditional.png
:name: cousins_conditional

A visual representation of $P(A \mid B)$ [^footnote1].
```



Thank you for coming to my TED talk.



[^footnote1]: These images are adapted from lectures by Bob Cousins.


## Visualizing conditional distributions for continuous data

Consider the arbitrary joint distribution $p_{XY}(X,Y)$ shown below

```{figure} ./assets/schematic_p_xy.png
:name: schematic_p_x_given_y

A schematic of the joint $p(X,Y)$
```

If we want to condition on the random varaible $Y$ taking on the value $y=-1.15$, then the conditional distribution $p_{X\mid Y}(X|Y)$ is just a normalized version of a slice through the joint:

$$
p_{X\mid Y}(X \mid Y=y) = \frac{p_{XY}(X,Y=y)}{\int p_{XY}(x,y) dx} =  \frac{p_{XY}(X,Y=y)}{p_Y(Y=y)}
$$

```{figure} ./assets/schematic_p_x_given_y.png
:name: schematic_p_x_given_y

A schematic of the slice through the joint $p(X,Y=y)$ and the normalized conditional $p(X|Y)$.
```

Similarly, if we want to condition on the random varaible $X$ taking on the value $x=1.75$, then the conditional distribution $p_{Y\mid X}(Y|X)$ is just a normalized version of a slice through the joint:

$$
p_{Y\mid X}(Y \mid X=x) = \frac{p_{XY}(X=x,Y)}{\int p_{XY}(x,y) dy} =  \frac{p_{XY}(X=x,Y)}{p_X(X=x)}
$$

```{figure} ./assets/schematic_p_y_given_x.png
:name: schematic_p_y_given_x

A schematic of the slice through the joint $p(X=x,Y)$ and the normalized conditional $p(Y|X)$.
```

## Chain Rule of Probability

One very powerful and useful result is that, without loss of generality, one can decompose a joint distribution into the appropriate product of conditionals. For example, one can always write the joint distribution for $X$ and $Y$ as

$$
p(X,Y) = p(X|Y) p(Y)
$$

Similarly, one can always decompose the the joint for three variables as

$$
p(X,Y,Z) = p(X|Y,Z) p(Y|Z) p(Z)
$$

And this type of decomposition for the joint for $N$ random variables $X_1, \dots, X_N$ is often written in this way:

$$
p_N(X_1, \dots, X_N) = \prod_{i=2}^N p_i(X_i|X_{i-1}, \dots X_{1}) p_1(X_{1})
$$

Note that here I've added subscripts to the distributions as they are all different in general. In some cases, one uses this same kind of decomposition and additionally assumes that there is some structure across the different distributions (eg. in a Markov process or an autoregressive model).

An alternative notation that is often found is:

$$
p(X_1, \dots, X_N) = \prod_{i=1}^N p(X_i|X_{< i})
$$

where the first term $p(X_{1})$ without any conditioning is implied.

## A mnemonic on conditional distributions: Units

We will see many different types of conditional distributions in this course, and manipulating them can be error prone and confusing. Manipulating conditional distributions takes some practice, it is not much different than learning to manipulate upper- and lower-indices in special realtivity and Einstein notation. As we will see later, some distributions have additional structure -- some variables may be (assmed to be) independent or conditionally independent -- and in these cases the decomposition isn't completely general, but it there are still some rules. 

For example, I know that $p(X,Y|Z)p(X)$ is not a valid decomposition of any joint $p(X,Y,Z)$ or conditional $p(X,Y|Z)$. I know this immediately by inspection because the $X$ appears on the left of the $\mid$ more than once. If $X,Y,Z$ are continuous and have units, then the units of this expression would be $[Y]^{-1}[X]^{-2}$. Similarly, if I wanted to check that it was normalized I would want to integrate it. While I can assume $\int  p(x,y|z) dx dy= 1$ and $\int p(x) dx = 1$, there is no reason for $\int  p(x,y|z)p(x)$ will be 1, and it will still have units of $[X]^{-1}$.

Personally, I like to sort the terms like this $p(X,Y) = p(X|Y) p(Y)$ instead of like this $p(X,Y) = p(X|Y) p(Y)$. Or like this $P(A \cap B) = P(A \mid B) p(B)$ instead of like this $P(A \cap B) = P(A \mid B) p(B)$. In both cases, what one can form a joint distribution by starting with a conditioanl and then multiplying by a distribution for what is being conditioned on. I find that putting the terms in this order helps me avoid mistakes and it's easier to connect to the chian rule of probability.

### Exercise

Which of the following are valid (not necessarily general) decompositions of some probability distribution?

<label><input type="checkbox" id="box-conditional-1" class="box"> $p(W,X,Y|Z)P(Z)$ </input></label>

<label><input type="checkbox" id="box-conditional-2" class="box"> $p(W,X,Y|Z)P(Y)$ </input></label>

<label><input type="checkbox" id="box-conditional-3" class="box"> $p(W|X,Y,Z)P(X,Y,Z)$ </input></label>

<label><input type="checkbox" id="box-conditional-4" class="box"> $p(W|X,Y,Z)P(X)$ </input></label>

<label><input type="checkbox" id="box-conditional-5" class="box"> $p(W|X,Y,Z)P(W,Y,Z)$ </input></label>

<label><input type="checkbox" id="box-conditional-6" class="box"> $p(W,X)p(Y,Z)$ </input></label>

<label><input type="checkbox" id="box-conditional-7" class="box"> $p(W|X)p(Y,Z)$ </input></label>

<label><input type="checkbox" id="box-conditional-8" class="box"> $p(W,Y)p(X|Z)$ </input></label>

<label><input type="checkbox" id="box-conditional-9" class="box"> $p(W|X,Y,Z)p(X,Y|Z)p(Z)$ </input></label>
