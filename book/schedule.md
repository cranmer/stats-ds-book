# Draft Schedule


Recording of lectures are accessible [here](https://applications.zoom.us/lti/rich?lti_scid=53e5b6ade1d092bbd38974bc31813aa0b9c9d37154d82fb28fd97562e49a6c2c&oauth_consumer_key=egAB3MeoRVG9kMt4z8eEXA). 

1. Week 1
    1. 9/2: Intro [Recording](https://nyu.zoom.us/rec/play/uA6Jy6FEsbZpQRfmeQ6jJV7ISs37lvdKMnwsJhuql9O445ANIB0TbmflpCqFPjqczKuhAr3k9voEv8Tc.K2AoCHSjTknMuoAA)
        1. syllabus
        1. juypter book
        1. review survey 
        1. about me and my research and a preview for the course
2. Week 2 
    1. 9/9: Basic prob theory [Recording](https://nyu.zoom.us/rec/play/Y6tMRTUxNDhU2n_pw9cPJr1kqmZDMcfCuqLGRqWuLIQ42M9AhGtuhjS-vi_XfaNzNr2i-nFlBPrSJdRa.eh480MdOBuleGYe2)
        1. Random Variables
            1. Probability space
        1. Probability Mass and Density functions
        1. Conditional Probability
        1. Bayes Theorem
            1. Quantifying prior odds via betting
            1. Incoherent beliefs
        1. Axioms of probability
        1. Examples
3. Week 3 
    1. 9/14: Class [Recording](https://nyu.zoom.us/rec/play/6Wvz4mMAK3qWkBLhOP98kLQMNcEc-H6rZg9zWUao-DTzme6TBAblX8Q7d_0Imyzjts9o48IAOG6reJst.KSmnHtGH6BTNiCvb)
        1. Conditional probability for continuous variables
            1. Chain rule of probability
            1. Sneak peek at graphical models
            1. The Drake equation
            1. Phosphine on Venus and Bayes Theorem
        1. Marginal Distributions
        1. Independence
        1. Emperical Distribution
        1. Expectation
        1. Variance, Covariance, Correlation
        1. Mutual Information
        1. Simple Data Exploration
    1. 9/16: Class [Recording](https://nyu.zoom.us/rec/play/ryKzr2yN2nWSWtMzavZivnrJDZ7rQFoowx5Pk6mWdFKq5ESJFjk0zCGQEtk6G1qCDM2VvdDez6t5Tdzk.OSHZVTqbRrQ-i_wa)
        1. Likelihood
        1. Change of variables
        1. Demo change of variables with autodiff
        1. Independence and correlation
        1. Conditioning
        1. Autoregressive Expansion
        1. Graphical Models
        1. HW: 
            1. Conditional Distribuutions
            1. Bernouli to Binomial
            1. Binomial to Poisson
            1. Poisson to Gaussian
            1. Product of Poissons vs. Multinomial
            1. CLT to Extreme Value Theory
4. Week 4
    1. 9/21: [Recording](https://nyu.zoom.us/rec/play/uSMzP3UYoZBRnDjAQfdzDKC5_WHAmX_tenfl7jduYPoTRqAXfuBYyC-tALiVJEWNNNYChZ-BwDoxe2lz.JdLbnvKxO5vZmXDv)
        1. Change of variables formula
        1. Probability Integral Transform
        1. Intro to automatic differentiation
            1. Demo with automatic differentiation
        1. Transformation properties of the likelihood
        1. Transformation properties of the MLE
        1. Transformation properties of the prior and posterior
        1. Transformation properties of the MAP
    1. 9/23: Estimators
        1. Skipped material from last lecture
            1. Lorentz-invariant phase space
            1. Normalizing Flows
            1. Copula
        1. Bias, Variance, and Mean Squared Error
        1. Simple Examples: Poisson and Gaussian
        1. Cramer-Rao bound & Information Matrix
        1. Bias-Variance tradeoff 
            1. James-Stein Demo
            1. Shrinkage
        1. HW: 
            1. James Stein
            1. [Neyman Scott Phenomena](https://blog.richmond.edu/physicsbunn/2016/11/28/the-neyman-scott-paradox/)
            1. some other shrinkage?
            1. Jeffreys for examples
            1. prior odds via betting example
            1. [Negatively biased relevant subsets](https://arxiv.org/abs/1109.2023)
5. Week 5
    1. 9/28 (Yom Kippur): Random Numbers [Recording](https://nyu.zoom.us/rec/play/L-BkDSdARQfotstBjZjW8WzTzF2g35bvftQIXWVe5MEmYDyJzscjqs3qrwDrAjKKV8lgHi04hw6EjyLZ.6DP4VVZA6_LvfkWE)
        1. Decision Theory
            1. [Admissible decision rule](https://en.wikipedia.org/wiki/Admissible_decision_rule)
            1. generalized decision rules ("for some prior")
        1. Consistency
        1. Sufficiency
        1. Exponential Family
        1. Score Statistic
        1. Information Matrix
            1. Information Geometry
            1. Transformation properties of Information Matrix
            1. Jeffreys' prior
                1. Transformation properties
            1. Reference Prior
            1. Sensitivity analysis
            1. likelihood principle
    1. 9/30: Sampling
        1. Change of variables vs. Error propagation
        1. Demo Error propagation fails
        1. Error propagation and Marginalization 
        1. Demo Central Limit Theorem
            1. Experience from class and Exceptions
        1. Error propagation with correlation
            1. track example
        1. Generating Random numbers
            1. Scipy distributions
        1. Probability Integral Transform
        1. Accept-Reject MC
            1. Acceptance and efficiency
            1. Importance Sampling & Unweighting
            1. Vegas
            1. native python loops vs. numpy broadcasting        1. Metropolis Hastings MCMC
        1. Proposal functions 
        1. Hamiltonian Monte Carlo
6. Week 6
    1. 10/5: Information Theory
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
        1. Parametric vs. non-parametric
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
        1. 10/21 (J-Lab talk) Buffer in schedule
            1. Selected topics
            1. Working with datasets
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
        1. Pivotal quantity
        1. Asymptotic Properties of Likelihood Ratio
            1. Wilks 
            1. Wald
        1. HW / Group Project: interactive Neyman-Construction Demo
    1. 10/28: Expected limits and sensitivty
        1. Bands
        1. CLs
        1. power-constrained limits
        1. Combinations
        1. (Look-elsewhere if not already covered)
        1. HW: 
            1. Combining p-values
            1. combining posteriors
10. Week 10
    1. 11/2 (day before election): Bayesian Model Selection
        1. Bayes Factors
        1. BIC, etc.
    1. 11/4 (day after election / Mid Term Grades): Bayesian Credible Intervals
        1. Interpretation
        1. Markov Chain Monte Carlo
        1. Metropolis Hastings
        1. Variational Inference
            1. Connecton to statistical physics
            1. LDA
            1. BBVI 
        1. HW: 
            1. Combining p-values
            1. combining posteriors
            1. MCMC for path integral in QM

11. Week 11
    1. 11/9: Simulation-based inference
        1. ABC
        1. Diggle
        1. likleihood ratio
        1. likelihood
        1. posterior
        1. Mining Gold
    1. 11/11 (Veteran's day) 
        1. SBI examples
        1. HW SBI problem
12. Week 12
    1. 11/16: Supervised Learning
        1. Statistical Learning Theory
            1. Loss, Risk, Emperical Risk
            1. Generalization
            1. VC dimension and Emperical risk minimization
            1. No Free Lunch
        1. Cross-validation test/train
            1. The history and mystery of deep learning
            1. Double Descent
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
        1. Softmax
        1. Neural Networks
        1. Domain Adaptation and Algorithmic Fairness
    1. 11/16: Causal Inference
        1. ladder of causality
        1. simple examples
        1. Domain shift, inductive bias
        1. Statistical Invariance, pivotal quantities, Causal invariance
        1. [Elements of Causal Inference by  Jonas Peters, Dominik Janzing and Bernhard Schölkopf](https://mitpress.mit.edu/books/elements-causal-inference) [free PDF](https://www.dropbox.com/s/dl/gkmsow492w3oolt/11283.pdf)
14. Week 14
    1. 11/30: Buffer for reorganization 
        1. Selected topics
    1. 12/2: Deep Learning Model Zoo
        1. MLP
        1. Convolutions
        1. Sequence Models: RNN and Tree RNN
        1. Graph Networks
        1. Transformers
        1. images, sets, sequences, graphs, hyper-graphs
        1. DL and functional programming
        1. Differentiable programming
15. Week 15
    1. 12/7 Buffer for reorganization 
        1. Selected topics
    1. 12/9: Review
        1. Review of first principles
        1. Review of techniques

