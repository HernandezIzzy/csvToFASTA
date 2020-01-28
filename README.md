# csvToFASTA
A Short Script to put DNA sequences stored in a csv to FASTA format. This is ideal if one wants to have a single FASTA file with multiple DNA sequences in them.

Inputs:
- Create a csv file with a list of DNA or gene sequences you want to put in FASTA format
  - Column A: Name of gene/sequence
  - Column B: Raw DNA sequence pertaining to each gene
- Install the Biostrings package using the install.packages() command
- Each row in the csv is a DNA sequence: you can put as many samples as you wish

Output: 
- A single FASTA file containing all the DNA sequences from the csv, exported to your chosen desination (in my example, it's my Desktop)
