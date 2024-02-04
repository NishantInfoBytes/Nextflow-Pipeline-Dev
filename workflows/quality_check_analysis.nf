nextflow.enable.dsl=2

include { fastqc_process } from '../modules/fastqc.nf' 
include { multiqc_process } from '../modules/multiqc.nf'
include { fastp } from '../modules/fastp.nf'



workflow QUALITY_CHECK_ANALYSIS{

	fastqc_ch = Channel.fromPath(params.csv_file) \
		| splitCsv(header:true) \
		| map { row -> tuple(row.sampleID, file(row.read1), file(row.read2)) }

// View the channel
	//fastqc_ch.view()

	fastqc_out_ch = fastqc_process(fastqc_ch)

	//fastqc_out_ch.view()

	multiqc_out_ch = multiqc_process(fastqc_out_ch.collect())
	
	fastp(fastqc_ch)	
}
