# Introduction to Statistical Causal Inference

[![GitHub](https://img.shields.io/github/license/JulianFrattini/bda-intro)](./LICENSE)

This repository contains the material for the introduction seminar to Statistical Causal Inference (SCI).
The purpose of the seminar is to introduce software engineering researchers with a background in analysis of quantitative data to a causal framework for inferential statistics proposed by Judea Pearl[^1] and Richard McElreath[^2].

## Versions

| Version | Date | Occasion |
|---|---|---|
| v1.0 | 2024-10-18 | Research visit at UPC, Barcelona |
| v2.0 | 2025-04-28 | Tutorial at the [RE'25 conference](https://conf.researchr.org/track/RE-2025/RE-2025-tutorials) |

## Structure

The repository contains the following directories and files.

```
├── version1 : material from version 1.0 of the seminar
│   ├── slides : slides for an interactive one-part series of the seminar
│   │   ├── bda4sci.pdf : PDF version for sharing
│   │   └── bda4sci.pptx : PowerPoint version for presenting
│   └── src : source code to follow along the examples
│       ├── html : a pre-compiled version of all Rmd files (using `knitr`) for easier viewing
│       ├── backdoor.Rmd : explanation and demonstration of applying the backdoor criterion
│       ├── colliders.Rmd : demonstration of the effect of a collider
│       ├── dags.Rmd : demonstration of specifying causal directed acyclic graphs
│       ├── forks.Rmd : demonstration of the effect of a fork
│       └── mediators.Rmd : demonstration of the effect of a mediator
├── version2 : material from version 2.0 of the seminar
│   ├── publicity : folder for advertizing the seminar
│   ├── slides : slides for an intense tutorial-style seminar
│   │   └── intro-sci.pptx : PowerPoint version for presenting
│   └── src : source code to follow along the examples
│       ├── associations : explanation of the fundamental relationships between three variables
│       │   ├── colliding.Rmd : demonstration of a common effect
│       │   ├── confounding.Rmd : demonstration of a common cause
│       │   └── colliding.Rmd : demonstration of a pipe
│       ├── basics : description of some fundamental concepts
│       │   ├── model-comparison.Rmd : demonstration of model comparison to identify appropriate causal models
│       │   ├── regression.Rmd : demonstration of the basic statistical analysis tool
│       │   └── simulations.Rmd : demonstration of ground truth simulations
│       └── util : utility files
└── sci.intro.Rproj : project file to open the project in RStudio
```

## System Requirements

In order to run the `R` scripts and `Rmd` notebooks in the _src_ folder, ensure that you have [R](https://ftp.acc.umu.se/mirror/CRAN/) (version > 4.0) and an appropriate IDE like  [RStudio](https://posit.co/download/rstudio-desktop/#download) installed on your machine.
Then, ensure the following steps:

1. Install the C toolchain by following the instructions for [Windows](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Windows#r40), [Mac OS](https://github.com/stan-dev/rstan/wiki/Configuring-C---Toolchain-for-Mac), or [Linux](https://github.com/stan-dev/rstan/wiki/Configuring-C-Toolchain-for-Linux) respectively.
2. Restart RStudio and follow the instructions starting with the [Installation of RStan](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started#installation-of-rstan)
3. Install the latest version of `stan` by running the following commands
```R
    install.packages("devtools")
    devtools::install_github("stan-dev/cmdstanr")
    cmdstanr::install_cmdstan()
```
4. Install all required packages via `install.packages(c("tidyverse", "ggdag", "brms", "marginaleffects", "patchwork"))`.
5. Create a folder called *fits* within *src/* such that `brms` has a location to place all Bayesian models.
6. Open the `sci-intro.Rproj` file with RStudio which will setup the environment correctly.

## License

Copyright © 2024 Julian Frattini. 
This work is licensed under the [Apache-2.0](./LICENSE) License.

[^1]: Pearl, J., & Mackenzie, D. (2018). The book of why: the new science of cause and effect. Basic books.
[^2]: McElreath, R. (2018). Statistical rethinking: A Bayesian course with examples in R and Stan. Chapman and Hall/CRC.
