# Nextflow QA-Check-Analysis Pipeline

## Overview
This Nextflow pipeline is designed for Quality Check and Analysis (QA) using workflows.
## Table of Contents
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)


## Requirements
Nextflow,FastQC,MultiQC And FastP

## Installation
Install using the conda
- Nextflow [(https://anaconda.org/bioconda/nextflow)]
- FastQC [(https://anaconda.org/bioconda/fastqc)]
- MultiQC [(https://anaconda.org/bioconda/multiqc)]
- FastP [(https://anaconda.org/bioconda/fastp)]

## Usage
Run the pipeline using the following command:

        nextflow run mai.nf --workflows quality_check_analysis 
                  OR
        nextflow run mai.nf --workflows quality_check
