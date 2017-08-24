---
title: "Bioconductor tools for mass spectrometry and proteomics"
author: 
- name: Laurent Gatto
  affiliation: Computational Proteomics Unit, Cambridge, UK
output:
  BiocStyle::html_document:
    toc_float: true
---

# How does mass spectrometry work?
# Accessing data
# Reading raw MS data

<iframe width="560" height="315" src="https://www.youtube.com/embed/KwCRV885Z-k" frameborder="0" allowfullscreen></iframe>

<details>

```r
#n# Accessing raw mass spectrometry data in R
## Pre-requisites
## - familiarity with R
## - knowledge of mass spec and MS data
## Learning objectives
## - Access to raw MS data
## - Understanding of the underlying infrastructure

## 1. Get example files
library("msdata")
fls <- proteomics(full.names = TRUE)
basename(fls)
fl <- fls[2]

## 2. Low level access
library("mzR")
rw <- openMSfile(fl) ## only 1 file
rw

sp1 <- spectra(rw, 1)
head(sp1)
spl <- spectra(rw, 1:2)
class(spl)
head(spl[[1]])
head(spl[[2]])

hd <- header(rw)
class(hd)
dim(hd)
head(hd)

## 3. Convenient access
suppressPackageStartupMessages(library("MSnbase"))
mse <- readMSData(fl, mode = "onDisk") ## can be multiple files

mse[[1]]
fData(mse)

## Summary
## - low level access with mzR::openMSfile
## - convenient access with MSnbase::readMSData
## - on disk access (as opposed to in memory)
##
## Next session: Learn more about these MSnExp objects
```
</details>

# Handling raw MS data
# Reading identification data
# Handling identification data
# MS/MS database search
# Analysing search results
# High-level data interface
# Visualisation
# Quantitative proteomics
# Importing third-party quantitation data
# Data processing and analysis
# Statistical analysis
# Machine learning
# Annotation
