# UPR Mayaguez QIIME2 Workshop

## Table of Contents
* [Overview](#overview): Aims, layout, and prerequisites
* [Structure](#structure): Logistics, breakdown of Sessions 1 & 2
* [Resources](#resources): Papers, Tutorials, QIIME 2 & R package installations

## Overview
This repository operates as a syllabus for the 2026 UPRM [QIIME 2](https://github.com/qiime2) Workshop. We will utilize this toolkit to work with a pre-processed 16S & 18S subset of reads from the original raw data through hypothesis testing and visualization.
### Workshop Aims

    1. Quality control and denoising

    2. Taxonomic assignment

    3. Alpha and beta diversity analysis

    4. Downstream: Statistical testing and figure generation

### Case study application: This workshop will explore and analyze data from the microbial communities of *C. californicus*, specifically

    42 samples: Venom gland tissue differences (distal, proximal, bulb): Control vs experiment

    Strengths and limitations of the data in its experimental design
    
    Downstream: Host population/location differences

    Downstream: Taxa with potential protective or symbiotic functions

### Instructors
Analysis Expert: Sierra Smith (Virtual) [@sierra-smith](https://github.com/sierra-smith) <br/>
Workshop Lead: Sabah Ul-Hasan (Virtual) [@sabahzero](https://github.com/sabahzero) <br/>
Professor: Tim Colston (In-Person) [@tcolston](https://github.com/tcolston) <br/>

### Key Dates
- By Mar 4, complete prerequisites below: (a) Installation of software, (b) GitHub account, (c) data downloaded, (d) recommended literature read
- Mar 9, Session 1 and completion of Aims 1-2: 12-3 PM AST
- Mar 11, Session 2 and completion of Aim 3: 1-3 PM AST
- Mar 9 & 11, Supporting Office Hours: 3-6 PM AST
To ensure student understanding of the above aims, Aim 4 will be completed downstream in the course 

### Prerequisites
(a) Participants must install the following on their local devices prior to the workshop. It is recommended this is done no later than a week prior in case any troubleshooting may be needed with set-up:

    QIIME 2 (via conda) -- instructions below

    Command-line interface (Terminal)

    Jupyter Notebook

    R and RStudio

    R packages:

        ggplot2

        vegan
        
        party
        
        qiime2R (install via devtools -- see below)

        phyloseq (install via devtools -- see below)

The following small test dataset can be utilized for practice: [Gut-to-Soil Tutorial](https://amplicon-docs.qiime2.org/en/stable/tutorials/gut-to-soil.html#bfScHXAB1f)

(b) Create a [Github account](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github)

(c) Download the workshop data
**Option 1: Direct download from this repository**
Click the green "Code" button at the top of this repo and select "Download ZIP"

**Option 2: Command-line transfer**
See 'Installations' below

(d) Complete literature readings [referenced here](#foundational-papers) (with [identical folder here](https://github.com/sabahzero/UPRM_QIIME2workshop/tree/main/papers) for easy download), minimally reading Ch III but ideally all 3 papers

## Structure

### Logistics

    Location: B348 (reserved by Tim Colston)

    Platforms: Google Hangouts, Google Drive, Git

### Session 1: From Pre-processed Data to Community Table
March 9, 12-3 PM AST

    Lecture 1 (40 min): 
        Introduction & Experimental Design of Data (Sabah)
        Introduction & Pre-processing of data through denoising (Sierra)

    Hands-on 1 (2 hrs): Q&A, final troubleshooting items, QIIME2, DADA2
        Built-in break: DADA2 run, Downloading SILVA database
        
    Lecture 2a (20 min): Taxonomy, Alignment, and Phylogeny

    3-6 PM Office Hours: This is an optional period to continue working through analyses
        Expectations upon arrival to Session 2 are that core diversity metrics have been generated

### Session 2: From Community Table to Biological Insight
March 11, 1-3 PM AST

    Lecture 2b (10 min): Walk-through of visualizations in QIIME2
    
    Hands-on 3 (30 min): Q&A, troubleshooting, viewing Emperor plots

    Lecture/Demo 3 (30 min): Intro to downstream analyses in R (Sabah)
        Importing QIIME2 artifacts into R using qiime2R
        Alpha/Beta diversity stats and PCoA plotting (ggplot2)

    Hands-on (1 hr): Creating PCoA and relative abundance plots

    3-6 PM Office Hours: This is an optional period to continue working through analyses
        Expectations are that Aims 1-3 are completed by end of the course, room to dive deeper and Aim 4 downstream

## Resources

### Foundational Papers

* [Protein & Cell: Foundational microbiome knowledge](https://academic.oup.com/proteincell/article/14/10/713/7147618)
* [Frontiers in Microbiology: Case study](https://doi.org/10.3389/fmicb.2017.00725)
* [Ch III, pp 69 - 90](https://escholarship.org/content/qt7rn287kn/qt7rn287kn.pdf?v=lg) "The venom microbiome of marine neogastropod *Californiconus californicus* is distinct from the surrounding environment and is compartment-specific"

### Tutorials

* Adapter Trimming: [TrimGalore User Guide](https://github.com/FelixKrueger/TrimGalore/blob/master/Docs/Trim_Galore_User_Guide.md#step-2-adapter-trimming)
* QIIME2 Data Import: [How to Import Data](https://amplicon-docs.qiime2.org/en/stable/how-to-guides/how-to-import.html)
* QIIME2 Amplicon Analysis: [Complete Documentation](https://amplicon-docs.qiime2.org/en/stable/)
* Classification and Regression Tree Analysis ([CART](https://cran.r-project.org/web/packages/party/index.html#:~:text=CRAN:%20Package%20party,2105%2D8%2))

### Installations

#### Command-line Transfer
##### Using rsync (preferred method)
```
rsync -avzP [username]@[server_address]:/path/to/workshop/data /local/destination/path

# Example with anonymized placeholders
# rsync -avzP student@workshop-server.edu:/mnt/data/microworkshop/yourdirectory ~/Desktop/workshop_data
```
##### Using sftp (alternative method)
```
sftp [username]@[server_address]
# Enter password when prompted

# Once connected, navigate and download
get -r /path/to/workshop/data /local/destination/path

# Exit when complete
bye

# Example with anonymized placeholders
# sftp student@workshop-server.edu
# get -r /mnt/data/microworkshop/yourdirectory ~/Desktop/workshop_data
```

#### QIIME 2
* [Quickstart](https://library.qiime2.org/quickstart/amplicon)
* Getting Started [Guide](https://amplicon-docs.qiime2.org/en/stable/explanations/getting-started.html)
* Create [a MacOS Virtual Machine](https://developer.apple.com/documentation/virtualization/installing-macos-on-a-virtual-machine) (VM) on your PC
* Miniconda [installation guide](https://docs.conda.io/projects/conda/en/latest/user-guide/install/index.html) (command line)
* QIIME2 [Native Install](https://docs.qiime2.org/2024.10/install/native/)

#### R packages

For devtools (to then install qiime2R and phyloseq)
````
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
````

phyloseq
````
devtools::install_github("joey711/phyloseq")
````

qiime2R
````
devtools::install_github("jbisanz/qiime2R")
````