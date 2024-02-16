makeblastdb -in mystery_transcripts.fasta -dbtype nucl -parse_seqids -out mystery_transcripts_db
makeblastdb -in mystery_proteins.fasta -dbtype prot -parse_seqids -out mystery_proteins_db
blastn -query mystery_nucleotide_query.fasta -db mystery_transcripts_db -evalue 1e-3 -max_target_seqs 5 -outfmt "7 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore stitle" -out nucleotide_search_results.txt
T010027234997, T010027234995, T010003453160
 awk '$3 > 90{print}' nucleotide_search_results.txt | awk '{print$2,$3}' >> most_similar.txt
blastp -query mystery_protein_query.fasta -db mystery_proteins_db -evalue 1e-5 -num_alignments 15 -outfmt "7 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore stitle" -out protein_search_results.txt
P010027090796, P010027090798, P010027073865, P010027077695
Coffea arabiccca
Gardenia jasminoides
Purative catalase
