##Exporting the env path of fastqc,multiqc and nextflow, inside which yours tool are installed
export PATH="/home/nishant.shekhar/miniconda3/envs/rnaseq-demo/bin:$PATH"
export PATH="/home/nishant.shekhar/miniconda3/envs/nf/bin:$PATH"
#Command to run the nextflow
nextflow run main.nf -resume
