# Draft Schedule


1. Week 1
    2. 9/2: Intro 
        1. syllabus
        1. juypter book
        1. philosophy
            1. [Knuth Calculus](https://micromath.wordpress.com/2008/04/14/donald-knuth-calculus-via-o-notation/)
            1. Functional Differential Geometry by Gerald Jay Sussman and Jack Wisdom.
            1. Simulations
        1. engaging demo 
        1. questions
2. Week 2
    2. 9/9: Basic prob theory
        1. Notation
        1. PMF, PDF, families
        1. Likelihood
        1. Examples
        1. Change of variables
3. Week 3
    1. 9/14: Class
        1. Change of variables vs. Error propagation
        1. Demo Error propagation fails
        1. Demo change of variables with autodiff
    1. 9/16: Class
        1. Error propagation and Marginalization 
        1. Demo Central Limit Theorem
            1. Experience from class and Exceptions
        1. Error propagation with correlation
            1. track example
        1. Independence and correlation
        1. Conditioning
        1. Autoregressive Expansion
        1. Graphical Models
        1. HW: 
            1. Bernouli to Binomial
            1. Binomial to Poisson
            1. Poisson to Gaussian
            1. Product of Poissons vs. Multinomial
            1. CLT to Extreme Value Theory
4. Week 4
    1. 9/21: Estimators
        1. Bias, Variance, and Mean Squared Error
        1. Sufficiency and Asymptotics
        1. Simple Examples: Poisson and Gaussian
        1. Cramer-Rao bound
                    1. exponential family
        1. Bias-Variance tradeoff and sufficiency
        1. Transformation Properties of likelihood
            1. Transformation properties of Fisher Information
            1. Information Geometry
            1. partition function
            1. likelihood principle
            1. score
    1. 9/23: Class
        1. Bayes Theorem
        1. Bayes vs. Frequentist & Axioms of probability
            1. Quantifying prior odds via betting
            1. Incoherent beliefs
            1. Probability space
        1. Priors
            1. Subjective
                1. Transformation properties
            1. Jeffreys' prior
                1. Transformation properties
            1. Reference Prior
        1. Decision Theory
            1. James-Stein Demo
            1. Shrinkage
            1. [Admissible decision rule](https://en.wikipedia.org/wiki/Admissible_decision_rule)
            1. generalized decision rules ("for some prior")
        1. HW: 
            1. James Stein
            1. some other shrinkage?
            1. Jeffreys for examples
            1. prior odds via betting example
            1. [Negatively biased relevant subsets](https://arxiv.org/abs/1109.2023)

5. Week 5
    1. 9/28 (Yom Kippur): Random Numbers
        1. Generating Random numbers
            1. Scipy distributions
        1. Accept-Reject MC
            1. Acceptance and efficiency
            1. Importance Sampling & Unweighting
            1. Vegas
            1. native python loops vs. numpy broadcasting 
        1. Probability Integral Transform
            1. Lorentz-invariant phase space
            1. Normalizing Flows
            1. Copula
    1. 9/30: Sampling
        1. Metropolis Hastings MCMC
        1. Proposal functions 
        1. Hamiltonian Monte Carlo
6. Week 6
    1. 10/5: Class
        1. Information theory
            1. Entropy
            1. Mutual information
            1. Relative Entropy
            1. cross entropy
        1. Divergences
            1. KL Divergence
            1. Fisher distance
            1. Optimal Transport
            1. Hellinger distance
            1. f-divergences
            1. Stein divergence

    1. 10/7: Implicit probabity models
        1. Latent Variable Models
        1. Simulators
        1. Probabilistic Programming
            1. Stan
            1. pyro
            1. pyprob
        1. Connections
            1. graphical models
            1. probability spaces
            1. Change of variables
        1. GANs
7. Week 7
    1. 10/12 (Columbus Day) Density Estimation
        1. parametric vs. non-parametric
        1. Non-parametric
            1. Histograms
                1. Binomial / Poisson statistical uncertainty
                1. weighted entries
            1. Kernel Density Estimation
                1. bandwidth and boundaries
                1. K-D Trees
        1. Parameterized
            1. Unsupervised learning
            1. Maximum likelihood
                1. loss function
                1. Neural Denstiy Estimation
            1. Adversarial Training
                1. GANs
                1. WGAN        
    1. 10/14: Goodness of fit
        1. chi-square test
        1. unbinned likelihood exponential example
        1. other GoF tests
        1. anomaly detection
8. Week 8
    1. 10/19: Hypothesis Testing
        1. Simple vs. Compound hypotheses
        1. Nuisance Parameters
        1. TypeI and TypeII error
        1. critical / acceptance region
        1. Neyman-Pearson Lemma
        1. Test statistics
        1. Connection to binary classification
            1. prior and domain shift
        1. multiple testing
            1. look elsewhere effect
            1. Familywise error rate 
            1. False Discovery Rate
            1. [Asymptotics, Daves, Gross and Vitells](https://arxiv.org/abs/1005.1891)
        1. 10/21 (J-Lab talk) Class
            1. Topic
            1. Topic
9. Week 9
    1. 10/26: Confidence Intervals
        1. Interpretation
        1. Coverage
        1. Power
        1. No UMPU Tests
        1. Neyman-Construction
        1. Likelihood-Ratio tests
        1. Profile likelihood
        1. Profile construction
        1. Asymptotic Properties of Likelihood Ratio
    1. 10/28: Expected limits and sensitivty
        1. Bands
        1. CLs
        1. power-constrained limits





10. Week 10
    1. 11/2 (day before election): Bayesian Model Selection
        1. Bayes Factors
        1. BIC, etc.
    1. 11/4 (day after election / Mid Term Grades): Class
    1. Bayesian Credible Intervals
        1. Interpretation
        1. Metropolis Hastings
        1. Variational Inference
            1. Connecton to statistical physics
            1. LDA
            1. BBVI 
11. Week 11
    1. 11/9: Simulation-based inference
        1. ABC
        1. Diggle
        1. likleihood ratio
        1. likelihood
        1. posterior
        1. Mining Gold
    1. 11/11 (Vetran's day) 
        1. SBI examples
12. Week 12
    1. 11/16: Supervised Learning
        1. Statistical Learning Theory
            1. Loss, Risk, Emperical Risk
            1. VC dimension and Emperical risk minimization
        1. Cross-validation test/train
            1. The history and mystery of deep learning
    1. 11/23: Regression
        1. Least Squares
        1. Regularized least squares
        1. Bias-Variance tradeoff
13. Week 13
    1. 11/23: Kernel Machines and Gaussian Processes
        1. Warm up with N-Dim Gaussian
        1. Theory
        1. Examples
    1. 11/25 (day before T-day): Classification 
        1. Binary vs. Multi-class classification
        1. Loss functions
        1. logistic regression
        1. Neural Networks
        1. Domain Adaptation and Algorithmic Fairness
    1. 11/16: Causal Inference
        1. ladder of causality
        1. simple examples
        1. [Elements of Causal Inference by  Jonas Peters, Dominik Janzing and Bernhard Schölkopf](https://mitpress.mit.edu/books/elements-causal-inference) [free PDF](https://www.dropbox.com/s/dl/gkmsow492w3oolt/11283.pdf)
14. Week 14
    1. 11/30: 
    1. 12/2 Class
        1. Topic
        1. Topic
15. Week 15
    1. 12/7: Class
        1. Topic
        1. Topic
    1. 12/9: Review
        1. Topic
        1. Topic

