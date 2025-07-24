
rule CLASSIFY_SEQUENCES:
    input: "data/{filename}.fna"
    output: euk=""
    conda:
    shell: 

rule CREATE_MAFFT:
    input:
    output:
    conda:
    run:

rule BLAST_SEQUENCES:
    input:
    output:
    conda:
    run:

rule ALIGN_SEQUENCES:
    input: euk="{filename}_emafft.fna", mito="{filename}_mmafft.fna"
    output: euk="{filename}_eal.fna", mito="{filename}_mal.fna"
    conda:
    shell:
        """
        mafft auto {input.euk} > {output.euk}
        mafft auto {input.mito} > {output.mito}
        """

rule GENERATE_TREES:
    input: euk="{filename}_eal.fna", mito="{filename}_mal.fna"
    output: 
    conda:
    shell: 

rule COMPARE_ORDERS:
    input:
    output:
    conda:
    run:

rule SINGLE_TREES:

    
rule COPHYLOGENETIC_ANALYSIS:
    input: 
    output: 
    conda:
    run: 