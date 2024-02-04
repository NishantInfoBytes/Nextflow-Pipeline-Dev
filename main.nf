nextflow.enable.dsl=2

include { QUALITY_CHECK } from './workflows/quality_check' 
include { QUALITY_CHECK_ANALYSIS } from './workflows/quality_check_analysis'

log.info """
         QUALITY-CHECK-OR-QUALITY-CHECK-ANALYSIS  
         ===================================
         outdir           : ${params.outdir}
         """
         .stripIndent()

workflow {
    if (params.workflow=='quality_check') {
        QUALITY_CHECK()
    } else {
        QUALITY_CHECK_ANALYSIS()
    }
}
