process multiqc_process {

    tag "multiqc_report"

    input:
    file(fastqc_files) 

    output:
    file("multiqc_report.html")

    script:
    """
    multiqc $fastqc_files 
    """
}
