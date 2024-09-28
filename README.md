# Introduction to Bayesian Data Analysis

[![GitHub](https://img.shields.io/github/license/JulianFrattini/bda-intro)](./LICENSE)

This repository contains the material for the introduction seminar to Bayesian Data Analysis (BDA).
The purpose of the seminar is to introduce software engineering researchers with a background in analysis of quantitative data to a Bayesian approach as proposed by Judea Pearl[^1] and Richard McElreath[^2].

## Structure

The repository contains the following directories and files.

- slides/ : directory with all presentation slides and files
  - series/ : slides for an interactive three-part series of the seminar
- src/ : source code to follow along the examples

## System Requirements

In order to run the `R` scripts and `Rmd` notebooks in the _src_ folder, ensure that you have [R](https://ftp.acc.umu.se/mirror/CRAN/) (version > 4.0) and [RStudio](https://posit.co/download/rstudio-desktop/#download) installed on your machine.
Then, ensure the following steps:

1. Install the `rstan` toolchain by following the instructions for [Windows](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Windows#r40), [Mac OS](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Mac), or [Linux](https://github.com/stan-dev/rstan/wiki/Configuring-C-Toolchain-for-Linux) respectively.
2. Restart RStudio and follow the instructions starting with the [Installation of RStan](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#installation-of-rstan)
3. Install the latest version of `stan` by running the following commands
```R
    install.packages("devtools")
    devtools::install_github("stan-dev/cmdstanr")
    cmdstanr::install_cmdstan()
```
4. Install all required packages via `install.packages(c("tidyverse", "dagitty", "ggdag", "brms", "posterior", "bayesplot", "marginaleffects", "broom.mixed", "patchwork"))`.
5. Create a folder called *fits* within *src/* such that `brms` has a location to place all Bayesian models.
6. Open the `bda-intro.Rproj` file with RStudio which will setup the environment correctly.

## License

Copyright © 2024 Julian Frattini. 
This work is licensed under the [Apache-2.0](./LICENSE) License.

[^1]: Pearl, J., & Mackenzie, D. (2018). The book of why: the new science of cause and effect. Basic books.
[^2]: McElreath, R. (2018). Statistical rethinking: A Bayesian course with examples in R and Stan. Chapman and Hall/CRC.
