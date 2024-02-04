process fastp {
    tag {"$sampleID"}
   
    input:
    tuple val(sampleID), file(read1), file(read2)

    output:
    tuple val(sampleID), file("${sampleID}_R1.trimmed.fq.gz"), file("${sampleID}_R2.trimmed.fq.gz"), emit: trimmed_fqs
    path("*json"), emit: fastp_qc

    script:
    """
    fastp -i $read1 -I $read2 \
    -o ${sampleID}_R1.trimmed.fq.gz -O ${sampleID}_R2.trimmed.fq.gz \
    --cut_window_size 5 \
    --qualified_quality_phred 30 \
    --length_required 30 \
    --detect_adapter_for_pe \
    --trim_poly_x \
    --trim_poly_g \
    --cut_tail \
    -h ${sampleID}.html -j ${sampleID}.json -R "fastp report for sample: ${sampleID}"
    """
}
