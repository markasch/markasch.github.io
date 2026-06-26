---
layout: page
title: codes
permalink: /codes/
description: Codes for all examples in the book "A Toolbox for Digital Twins". When multi-language versions are available, they are indicated by a * after the example description.
nav: true
nav_order: 3
horizontal: true
---

## Code examples for Chapter 1.
---

- [Example 1.3](https://github.com/markasch/DT-tbx-examples/blob/master/01intro/underfitting_overfitting.ipynb) underfitting and overfitting


## Code examples for Chapter 3. 
---
Availability of multi-language versions is indicated by a *.

### nonlinear, linear and difference equations
- [Example 3.4](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p04_nonlineq) solution of a nonlinear equation by various methods.*
- [Example 3.11](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p11_linsys) solution of an ill-conditioned linear system.*
- [Example 3.15](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p15_cobweb_plot) cobweb plot of a difference equation.*

### ode
- [Example 3.25](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p25_ode_unstab) solve an unstable ordinary differential equation by different methods.*
- Example 3.28 -- see Example 3.25.

### finite difference methods
- [Example 3.29](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p29_transport) solution of a transport equation by different methods.*
- [Example 3.30](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p30_Lap_Neumann) Laplace equation with Neumann boundary condition.*
- [Example 3.31](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p31_Laplace_2D) 2D Poisson equation in L-shaped geometry.
- [Example 3.32](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p32_poisson_sparse_FD.ipynb) 2D Poisson equation for electrostatics with different solvers.
- [Example 3.33](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p33_heat_CN.m) 1D heat equation with Crank-Nicolson scheme.
- [Example 3.34](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p34_heat_periodic.ipynb) 1D heat equation with explicit and implicit schemes.
- [Example 3.35](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p35_wave_abc) 2D wave equation with absorbing boundary conditions.
- [Example 3.36](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p36_wave2D.ipynb) 2D wave equation with very efficient implementation.

### finite element methods
- [Example 3.39](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p39_electro.edp) 2D elctrostatics with Dirichlet conditions.
- [Example 3.40](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p40_poisson2D_conv.edp) 2D Poisson equation convergence analysis.
- [Example 3.41](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p41_poisson2D_dir_neu.edp) 2D Poisson equation with Dirichlet and Neumann conditions.
- [Example 3.43](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p43_ell_NL_mult.edp) nonlinear elliptic equation with Picard iteration.
- [Example 3.44](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p44_ell_NL_newton.edp) nonlinear elliptic equation with Newton iteration.
- [Example 3.45](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p45_ell_NL_add.edp) nonlinear elliptic equation with additive term.

### stochastic simulation (monte-carlo methods)
- [Example 3.46](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p46_MC_integration) Monte-Carlo integration.*
- [Example 3.47](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p47_MC_convg.ipynb) Monte-Carlo integration--convergence study.
- [Example 3.48](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p48_MC_importance.ipynb) importance sampling for variance reduction.
- [Example 3.49](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p49_MC_reject.ipynb) rejection sampling for variance reduction.
- [Example 3.56](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p56_mcMH.R) Metropolis-Hasting MCMC for computing a posterior.
- Example 3.57 -- see Example 3.56.
- [Example 3.58](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p58_MCMC_simple.ipynb) Simple MCMC for a Gaussian posterior.

### stochastic differential equations
- [Example 3.60](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p60_white_noise) white noise simulation.*
- [Example 3.62](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p62_MBrown) Brownian motion simulation.*
- [Example 3.63](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p63_Stoch_Int) Ito and Stratonovich stochastic integral evaluation.*
- [Example 3.82](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p82_sde_em) Euler-Maruyama method for a linear SDE.*
- [Example 3.85](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p85_sde_ou) Ornstein-Uhlenbeck equation.*
- [Example 3.87](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p87_sde_ml) Milstein method for a nonlinear SDE.*
- [Example 3.88](https://github.com/markasch/DT-tbx-examples/blob/master/03sim/x3p88_spde_nagumo.ipynb) Nagumo's SPDE.


## Code examples for Chapter 4.
---

- [Example 4.10](https://github.com/markasch/DT-tbx-examples/blob/master/04opt/x4p10_GDvsSGD.ipynb) stochastic gradient descent

## Code examples for Chapter 5.
---

### supervised learning
- [Example 5.5](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p5_slr) simple linear regression.*
- [Example 5.16](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p16_k_nn_iris) k-nn classifier for iris data.
- [Example 5.19](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p19_svm_iris.Rmd) SVM classifier for iris data.
- [Example 5.20](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p20_svm_reg.Rmd) SVM regression for lidar data.
- [Example 5.21](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p21_nnet_squares) neural network for squares data.
- [Example 5.22](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p22_save_reload.R) saving and reloading a previously learned model.
- [Example 5.23](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p23_nnet_MLP_wine) neural network for fraud detection.
- [Example 5.25](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p25_naive_bayes.py) naive Bayes classifier.

### unsupervised learning

- [Example 5.26](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p26_k_means_simple.Rmd) simple k-means clustering.
- [Example 5.27](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p27_k_means_skl.ipynb) simple k-means clustering with tuning.

### cross-validation and tuning

- [Example 5.30](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p30_CV_caret.Rmd) cross-validation with caret.
- [Example 5.31](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p31_k_nn_iris_cv.R) cross-validation for tuning of k-nn model.
- [Example 5.32](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p32_svm_iris_tune.Rmd) tuning and cross-validation of SVM model.
- [Example 5.33](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p33_svm_tune_test.R) further tuning of SVM model.
- [Example 5.34](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p34_nn_reg_caret_tune.R) tuning neural networks for regression.
- [Example 5.35](https://github.com/markasch/DT-tbx-examples/blob/master/05ml/x5p35_nn_class_caret_tune) tuning neural networks for classification.


## Code examples for Chapter 6.
---

- [Example 6.2](https://github.com/markasch/DT-tbx-examples/blob/master/06fda/x6p2_fda_tests.R) underitting and overfitting
- Example 6.3 - see Example 6.2


## Code examples for Chapter 8.
---

- [Example 8.5](https://github.com/markasch/DT-tbx-examples/blob/master/08inv/x8p5_duffing) Duffing's equation
- [Example 8.17](https://github.com/markasch/DT-tbx-examples/blob/master/08inv/x8p17_inv_nlin_GN.m) Gauss-Newton method for nonlinear inversion
- [Example 8.18](https://github.com/markasch/DT-tbx-examples/blob/master/08inv/x8p18_inv_nlin_LM) Levenberg-Marquardt method for nonlinear inversion


## Code examples for Chapter 9.
---

- [Example 9.8](https://github.com/markasch/DT-tbx-examples/blob/master/09da/x9p8_gauss_state.m) Gaussian state space model.
- [Example 9.12](https://github.com/markasch/DT-tbx-examples/blob/master/09da/x9p12_kf_gauss_state.m) Kalman filter for Gaussian state space model.
- [Example 9.14](https://github.com/markasch/DT-tbx-examples/blob/master/09da/x9p14_ekf_pendulum.m) extended Kalman filter for noisy pendulum.
- [Example 9.18](https://github.com/markasch/DT-tbx-examples/blob/master/09da/x9p18_ukf_nav2d.m) unscented Kalman filter for 2D navigation.
- [Example 9.21](https://github.com/markasch/DT-tbx-examples/blob/master/09da/x9p21_enkf_l63.ipynb) ensemble Kalman filter for Lorenz-63 chaotic system.
- [Example 9.22](https://github.com/markasch/DT-tbx-examples/blob/master/09da/x9p22_enkf_ks.ipynb) ensemble Kalman filter for Kuramoto-Sivashinsky turbulent system.

## Code examples for Chapter 10.
---

- [Example 10.2](https://github.com/markasch/DT-tbx-examples/blob/master/10rom/x10p2_svd_opt_thr.ipynb) SVD for optimal thresholding
- [Example 10.8](https://github.com/markasch/DT-tbx-examples/blob/master/10rom/x10p8_omp_binary.m) optimal matched pursuit for binary signal


## Code examples for Chapter 11.
---

### Bayesian estimation
- [Example 11.5](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p5_bayes_grid_binom.R) Bayesian inference for binomial random variable (influence of priors).
- [Example 11.7](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p7_bayes_binomial_beta.ipynb) Bayesian inference for binomial random variable with beta conjugate priors.
- [Example 11.8](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p8_bayes_beta_binom_epidemic.R) Bayesian inference for epidemics.

### Bayesian regression
- [Example 11.10](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p10_bayes_gaussian_product.m) Bayesian inference with Gaussian products.
- [Example 11.12](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p12_bayes_air_qual.R) Bayesian inference of a mean for air quality data. 
- [Example 11.13](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p13_bayes_lin_reg.ipynb) Bayesian inference for a multivariate Gaussian (linear regression). 
- [Example 11.14](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p14_bayes_pendulum.m) Bayesian inference for parameters of a noisy pendulum. 
- [Example 11.15](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p15_bayes_reg_diabetes.R) Bayesian regression and model reduction for diabetes data. 
- [Example 11.17](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p17_gp_sine.py) Gaussian process regression for a sine function.

### Bayesian filters
- [Example 11.18](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p18_bayes_lin_reg_multi.ipynb) Bayesian sequential regression for a multivariate Gaussian.
- [Example 11.19](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p19_bayes_sequential.m) Bayesian sequential estimation of 2d coordinates.

### Bayesian inverse problems
- [Example 11.21](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p21_one_d_heat_ip.m) Bayesian inversion for 1d heat equation.

### Bayesian optimization
- [Example 11.22](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p22_bayes_opt_1d.ipynb) Bayesian optimization of a 1d function.

### probabilistic programming
- [Example 11.23](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p23_bayes_bern_beta_mc.ipynb) Bayesian inference of a proportion.
- [Example 11.24](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p24_bayes_lin_reg_pp.ipynb) Bayesian linear regression.
- [Example 11.25](https://github.com/markasch/DT-tbx-examples/blob/master/11uq/x11p25_bayes_ode_mcmc.ipynb) Bayesian inverse problems for ordinary differential equations.


## Code examples for Chapter 12.
---

- [Example 12.9](https://github.com/markasch/DT-tbx-examples/blob/master/12caus/x12p9_pcalg_ex.R) basic example from pcalg package

