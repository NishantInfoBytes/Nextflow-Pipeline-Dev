##Exporting the path of fastqc, inside this env fastqc tool is installed
export PATH="/home/nishant.shekhar/miniconda3/envs/rnaseq-demo/bin:$PATH"
export PATH="/home/nishant.shekhar/miniconda3/envs/nf/bin:$PATH"
#Command to run the nextflow
nextflow run main.nf -resume