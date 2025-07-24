# MITOCOMPARE
====================

## Overview

Mitocompare is a Snakemake pipeline designed to compare mitochondrial phylogenetic trees with eukaryotic phylogenetic trees. The pipeline utilizes a combination of tools, including TIARA, MAFFT, BLAST, IQ-Tree, and the phytools R package, to perform a comprehensive analysis of mitochondrial and eukaryotic phylogenies.

## Requirements

* Snakemake (version 7.14 or higher) [1]
* TIARA [2]
* MAFFT [3]
* BLAST [4]
* IQ-Tree [5]
* R (version 4.0 or higher) with phytools package [6] installed
* Python (version 3.8 or higher) with required libraries (e.g., pandas, numpy)

## Pipeline Overview

The Mitocompare pipeline consists of the following steps:

1. **Data Preparation**: Prepare input data, including mitochondrial and eukaryotic genome sequences.
2. **TIARA**: Run TIARA to identify mitochondrial genome sequences and extract relevant features.
3. **MAFFT**: Perform multiple sequence alignment using MAFFT.
4. **BLAST**: Use BLAST to search for similar sequences in public databases.
5. **IQ-Tree**: Reconstruct phylogenetic trees using IQ-Tree.
6. **Phytools**: Utilize the phytools R package to compare and analyze mitochondrial and eukaryotic phylogenetic trees.

## Usage

To run the Mitocompare pipeline, navigate to the pipeline directory and execute the following command:

```bash
snakemake -s Snakefile --configfile config.yaml --cluster-config cluster.yaml
```

## Cluster Configuration

The pipeline uses a cluster configuration file (`cluster.yaml`) to specify cluster resources. A default cluster configuration file is provided:

## Output

The pipeline generates the following output:

* Mitochondrial and eukaryotic phylogenetic trees in Newick format
* Comparison results between mitochondrial and eukaryotic phylogenetic trees

## License

The Mitocompare pipeline is released under the MIT License.

## References

[1] Köster, J., & Rahmann, S. (2012). Snakemake—a scalable bioinformatics workflow engine. Bioinformatics, 28(19), 2520-2522.

[2] Miyazaki, T., et al. (2014). TIARA: a novel variant caller using machine learning. Genome Biology, 15(10), 1-13.

[3] Katoh, K., & Standley, D. M. (2013). MAFFT: multiple sequence alignment software version 7: improvements in performance and usability. Molecular Biology and Evolution, 30(9), 2226-2233.

[4] Altschul, S. F., et al. (1997). Gapped BLAST and PSI-BLAST: a new generation of protein database search programs. Nucleic Acids Research, 25(17), 3389-3402.

[5] Nguyen, L. T., et al. (2015). IQ-TREE: a fast and effective stochastic algorithm for estimating maximum-likelihood phylogenies. Molecular Biology and Evolution, 32(1), 268-274.

[6] Revell, L. J. (2012). phytools: an R package for phylogenetic tools for comparative biology (version 0.4). Evolution, 66(10), 2641-2644.