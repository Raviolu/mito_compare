
import glob

configfile: "config.yaml"


metagenome = glob()

rule all:
    output:
        expand("results/{sample}.treefile", sample=glob("data/*.fna"))
        expand("results/{sample}.svg", sample=glob("data/*.fna"))


rule CLASSIFY_SEQUENCES:
    input: 
        fasta = "data/{filename}.fna"
    output:
        euk = "results/{filename}/work/eukaryote_data.tsv",
        mito = "results/{filename}/work/mitochondria_data.tsv"
    conda: "envs/default.yaml"
    run:
        """
        
        """

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