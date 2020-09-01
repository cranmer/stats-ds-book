# Statistical decision theory

Work in progress, initially just copying over from Wikipedia article: [Admissible decision rule](https://en.wikipedia.org/wiki/Admissible_decision_rule)

Define sets $\Theta$, ${\mathcal {X}}$, and ${\mathcal {A}}$, where 
 * $\Theta$ are the states of nature, 
 * ${\mathcal {X}}$ the possible observations, and 
 * ${\mathcal {A}}$ the actions that may be taken. 
 
An observation $x\in {\mathcal  {X}}$ is distributed as  $F(x\mid \theta )$ and therefore provides evidence about the state of nature 
$\theta \in \Theta$. 

A decision rule is a function 
$\delta :{{\mathcal  {X}}}\rightarrow {{\mathcal  {A}}}$, where upon observing $x\in {\mathcal  {X}}$, we choose to take action $\delta (x)\in {\mathcal  {A}}$. 

Also define a loss function $L:\Theta \times {\mathcal  {A}}\rightarrow {\mathbb  {R}}$, which specifies the loss we would incur by taking action 
$a\in {\mathcal  {A}}$ when the true state of nature is $\theta \in \Theta$. Usually we will take this action after observing data $x\in {\mathcal {X}}$, so that the loss will be $L(\theta ,\delta (x))$. (It is possible though unconventional to recast the following definitions in terms of a utility function, which is the negative of the loss.)

Define the risk function as the expectation $R(\theta ,\delta )=\operatorname {E}_{{F(x\mid \theta )}}[{L(\theta ,\delta (x))]}.\,\!$

Whether a decision rule $\delta\,\!$ has low risk depends on the true state of nature $\theta$. A decision rule $\delta ^{*}$ dominates a decision rule $\delta$ if and only if $R(\theta ,\delta ^{*})\leq R(\theta ,\delta )$ for all 
$\theta$, and the inequality is strict for some 
$\theta$.

## Bayes rules:

Let $\pi (\theta )$ be a probability distribution on the states of nature. From a Bayesian point of view, we would regard it as a prior distribution. That is, it is our believed probability distribution on the states of nature, prior to observing data. For a frequentist, it is merely a function on 
$$\Theta$ with no such special interpretation. The Bayes risk of the decision rule 
$\delta$ with respect to $\pi (\theta )$ is the expectation
\begin{equation}
r(\pi ,\delta )=\operatorname {E}_{{\pi (\theta )}}[R(\theta ,\delta )].
\end{equation}
A decision rule $\delta$ that minimizes 
$r(\pi ,\delta )$ is called a Bayes rule with respect to $\pi (\theta )$. There may be more than one such Bayes rule. 


## Generalized Bayes rules:

In the Bayesian approach to decision theory, the observed 
$x$ is considered fixed. Whereas the frequentist approach (i.e., risk) averages over possible samples 
$x\in {\mathcal  {X}}$ the Bayesian would fix the observed sample 
$x$ and average over hypotheses 
$\theta \in \Theta$. Thus, the Bayesian approach is to consider for our observed $x$ the expected loss.
\begin{equation}
\rho (\pi ,\delta \mid x)=\operatorname {E}_{{\pi (\theta \mid x)}}[L(\theta ,\delta (x))]
\end{equation}
where the expectation is over the posterior of 
$\theta$ given $x$ (obtained from 
$\pi (\theta )$ and 
$F(x\mid \theta )$ using Bayes' theorem).

Having made explicit the expected loss for each given 
$x$ separately, we can define a decision rule 
$\delta$ by specifying for each 
$x$ an action 
$\delta (x)$ that minimizes the expected loss. This is known as a generalized Bayes rule with respect to 
$\pi (\theta )$. There may be more than one generalized Bayes rule, since there may be multiple choices of 
$\delta (x)$ that achieve the same expected loss.

According to the complete class theorems, under mild conditions every admissible rule is a (generalized) Bayes rule (with respect to \textit{some} prior 
$\pi (\theta )$ —- possibly an improper one -— that favors distributions 
$\theta$ where that rule achieves low risk). Thus, in frequentist decision theory it is sufficient to consider only (generalized) Bayes rules.
