#!/bin/bash
#my script
echo "This script can count the number of sequences in a fasta file."
greeting="Hello"
your_name="Erick!"
echo "$greeting" "$your_name"
mkdir ~/Desktop/bioinformatics
cd ~/Desktop/bioinformatics
mkdir ~Desktop/learning_bash
cd ~/Desktop
mv transcriptome1.fasta ~/Desktop/bioinformatics/learning_bash
cd ~/Desktop/bioinformatics/learning_bash 
grep -c ">" * > fasta_count.txt
