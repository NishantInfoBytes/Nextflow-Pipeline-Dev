process fastqc_process {
	tag "$sampleID"

	input:
	tuple val(sampleID), file(read1), file(read2)

	output:
	file("{*.html,*.zip}")

	script:
	"""
	fastqc $read1 $read2
	"""
}
