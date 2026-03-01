# UPR Mayaguez QIIME2 Workshop

## Table of Contents
* [Overview](#overview): Aims, layout, and prerequisites
* [Resources](#resources)

## Overview
This repository operates as a syllabus for the 2026 UPRM [QIIME 2](https://github.com/qiime2) Workshop. We will utilize this tooklit to work with pre-processed 16S & 18S reads from the original raw data through hypothesis testing and visualization.
### Workshop Aims

    1. Quality control and denoising

    2. Taxonomic assignment

    3. Alpha and beta diversity analysis

    4. Statistical testing and figure generation

### Case study application: This workshop will explore and analyze data from the microbial communities of C. californicus, specifically

    Venom gland tissue differences (distal, proximal, bulb) between control and experimental samples

    Host population/location differences

    Taxa with potential protective or symbiotic functions

    Strengths and limitations of the data in its experimental design

### Instructors
Analysis Expert: Sierra Smith (Virtual) [@sierra-smith](https://github.com/sierra-smith) <br/>
Workshop Lead: Sabah Ul-Hasan (Virtual) [@sabahzero](https://github.com/sabahzero) <br/>
Professor: Tim Colston (In-Person) [@tcolston](https://github.com/tcolston) <br/>

### Key Dates
- By Feb 28, complete prerequisites below: (a) Installation of software, (b) Github account, (c) data downloaded, (d) recommended literature read
- Mar 3, Session 1 and completion of Aims 1-2: 12-3 PM AST
- Mar 4, Session 2 and completion of Aims 3-4: 1-3 PM AST
- Mar 3 & 4, Supporting Office Hours: 3-6 PM AST

### Prerequisites
(a) Participants must install the following on their local devices prior to the workshop. It is recommended this is done no later than a week prior in case any troubleshooting may be needed with set-up:

    QIIME 2 (via conda)

    Command-line interface (Terminal)

    Jupyter Notebook

    R and RStudio

    R packages:

        qiime2R

        ggplot2

        vegan

        phyloseq

The following small test dataset can be utilized for practice: https://amplicon-docs.qiime2.org/en/stable/tutorials/gut-to-soil.html#bfScHXAB1f

(b) Create a [Github account](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github)

(c) Utilize your newly created Github account and intalled software to download the data from this repository

(d) Complete reads of the literature [reference](#foundational-papers) or the [identical folder here](https://github.com/sabahzero/UPRM_QIIME2workshop/tree/main/papers) with minimally reading Ch III but ideally all 3 papers

## Workshop Structure
### Session 1: "From Pre-processed Data to Community Table"
March 3, 12-3 PM AST

    Lecture 1 (20 min): Introduction, Experimental Design, Marker Gene Choice (16S/18S), QIIME2 Overview

    Hands-on 1 (1 hr): Q&A, final troubleshooting items, QIIME2 run

    Break (10 min)

    Lecture 2 (25 min): Taxonomy, Alignment, Phylogeny, and Generating Core Metrics (Alpha/Beta Diversity)

    Hands-on 2 (1 hr 35 min): Running core diversity, viewing quick Emperor plots

    Office Hours: 3-6 PM for troubleshooting and additional work

### Session 2: "From Community Table to Biological Insight"
March 4, 1-3 PM AST

    Hands-on 3 (30 min): Importing QIIME2 artifacts into R using qiime2R

    Lecture/Demo 3 (45 min): Introduction to downstream analyses in R focused on Alpha/Beta diversity stats, PCoA plotting (ggplot2)

    Hands-on 4 (45 min): Creating PCoA and relative abundance plots

    Office Hours: 3-6 PM for troubleshooting and additional work

### Logistics

    Location: B348 (reserved by Tim Colston)

    Platforms: Google Hangouts, Google Drive, Git

## Resources
### Software & Tutorials

Adapter Trimming: [TrimGalore User Guide](https://github.com/FelixKrueger/TrimGalore/blob/master/Docs/Trim_Galore_User_Guide.md#step-2-adapter-trimming)

QIIME2 Data Import: [How to Import Data](https://amplicon-docs.qiime2.org/en/stable/how-to-guides/how-to-import.html)

QIIME2 Amplicon Analysis: [Complete Documentation](https://amplicon-docs.qiime2.org/en/stable/)

[Classification and Regression Tree Analysis (CART)](https://cran.r-project.org/web/packages/party/index.html#:~:text=CRAN:%20Package%20party,2105%2D8%2)

### R Analysis Packages

    Classification and Regression Tree Analysis: party package

    Principal Coordinates Analysis: qiime2R, ggplot2

    Relative Abundance Plots: ggplot2 with ANOVA/post-hoc tests

### Foundational Papers

[Protein & Cell: Foundational microbiome knowledge](https://academic.oup.com/proteincell/article/14/10/713/7147618)

[Frontiers in Microbiology: Case study](https://doi.org/10.3389/fmicb.2017.00725)

[Ch III, pp 69 - 90](https://escholarship.org/content/qt7rn287kn/qt7rn287kn.pdf?v=lg) "The venom microbiome of marine neogastropod Californiconus californicus is distinct from the surrounding environment and is compartment-specific"
