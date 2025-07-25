#!/bin/bash
set -e
cd resources
if [[ ! -d "resources/BLAST"]]; then
    echo "BLAST database not found. Installing latest database from NCBI."
    mkdir BLAST && cd BLAST
    (
        mkdir mito && cd mito
        wget https://ftp.ncbi.nlm.nih.gov/blast/db/mito.tar.gz.md5
        sleep 2
        wget https://ftp.ncbi.nlm.nih.gov/blast/db/mito.tar.gz

        if [[ $(md5sum mito.tar.gz) != $(cat mito.tar.gz.md5) ]]; then
            echo "There has been an error downloading mitochdonria BLAST db. Try checking your internet connection"
            cd ../../
            rm -rf BLAST
            exit 1
        else
            echo "mito db downloaded"
            gunzip mito.tar.gz
        fi
    )
    (
        mkdir euk && cd euk
        wget https://ftp.ncbi.nlm.nih.gov/blast/db/SSU_eukaryote_rRNA.tar.gz
        sleep 2
        wget https://ftp.ncbi.nlm.nih.gov/blast/db/SSU_eukaryote_rRNA.tar.gz.md5

        if [[ $(md5sum SSU_eukaryote_rRNA.tar.gz) != $(cat SSU_eukaryote_rRNA.tar.gz.md5)]]; then
            echo "There has been an error downloading eukaryote SSU BLAST db. Try checking your internet connection"
            cd ../../
            rm -rf BLAST
            exit 1
        else
            echo "euk db downloaded"
            gunzip SSU_eukaryote_rRNA.tar.gz
    )
    
