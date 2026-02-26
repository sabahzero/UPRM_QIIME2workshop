# UPR Mayaguez QIIME2 Workshop

## Workshop Overview
This repository operates as a syllabus for the UPRM [QIIME 2](https://github.com/qiime2) Workshop. We utilize this tooklit to process 16S & 18S reads from raw data through hypothesis testing and visualization, with aims as follows: 

    Quality control and denoising

    Taxonomic assignment

    Alpha and beta diversity analysis

    Statistical testing and figure generation

This workshop will utilize data from the C. californicus venom microbiome study. Participants will explore:

    Basic alpha/beta diversity analyses

    Tissue differences (distal, proximal, bulb) between control and experimental samples

    Population/location differences

    Taxa with potential protective or symbiotic functions

    Cone snail literature gaps regarding ecological considerations

### Instructors
Sabah Ul-Hasan (Virtual) [@sabahzero](https://github.com/sabahzero) <br/>
Sierra Smith (In-Person) [@sierra-smith](https://github.com/sierra-smith) <br/>
Tim Colston (In-Person) [@tcolston](https://github.com/tcolston) <br/>

### Key Dates
- Pre-requisites [Feb 28]: (a) Installation of required software, (b) processing of Raw Reads
- Session 1 [Mar 3]: 12-3 PM
- Session 2 [Mar 4]: 1-3 PM AST
- Additional Office Hours: 3-6 PM, both days Mar 3 & 4

### Prerequisites
Software Installation (Mandatory): Participants must install the following on their local devices prior to the workshop. It is recommended this is done no later than a week prior in case any troubleshooting may be needed with set-up:

    QIIME 2 (via conda)

    Command-line interface (Terminal)

    Jupyter Notebook

    R and RStudio

    R packages:

        qiime2R

        ggplot2

        vegan

        phyloseq

    Github account

Additionally, a small test dataset will be provided for download prior to the workshop.

## Workshop Structure
### Session 1: "From Raw Data to Community Table"
March 3, 12-3 PM AST

    Lecture 1 (25 min): Introduction, Experimental Design, Marker Gene Choice (16S/18S), QIIME2 Overview

    Hands-on 1 (1 hr 30 min) : Demultiplexing, Import, DADA2/Denoising in QIIME2

    Lecture 2 (25 min): Taxonomy, Alignment, Phylogeny, and Generating Core Metrics (Alpha/Beta Diversity)

    Hands-on 2 (25 min): Running core diversity, viewing quick Emperor plots

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

### R Analysis Packages

    Classification and Regression Tree Analysis: party package

    Principal Coordinates Analysis: qiime2R, ggplot2

    Relative Abundance Plots: ggplot2 with ANOVA/post-hoc tests

### Foundational Papers

[Protein & Cell: Foundational microbiome knowledge](https://academic.oup.com/proteincell/article/14/10/713/7147618)

[Frontiers in Microbiology: Case study](https://doi.org/10.3389/fmicb.2017.00725)

Parasites & Trends: Optional review
