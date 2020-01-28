
#perhaps use scan() instead of read.csv if your input file is simple enough.

#The Bioconductor project has many packages for dealing with sequence 
#data, including Biostrings and ShortRead; both would enable this, e.g.,
#source("http://bioconductor.org/biocLite.R")


library(Biostrings)

#csv file format: Column A name of Gene, Column B is the sequence of each specified gene


all_genes <- read.csv("C:/Users/ihernandez/Desktop/plate1_partial2_fastainput.csv")
all_genes <- data.frame(lapply(all_genes, as.character), stringsAsFactors=FALSE)
sequences <- all_genes$Gene_Sequence
names(sequences) <- all_genes$Gene_name
dna2 <- DNAStringSet(sequences)
writeXStringSet(dna2, "C:/Users/ihernandez/Desktop/Mcapgenes_plate1and2.fasta")

# For creating FASTA files for a control set of genes and the genes to analyze compared to the control

#control_csv <- read.csv("C:/Users/ihernandez/Desktop/McapGene_HighcfuParse.csv")
#control_csv <- data.frame(lapply(control_csv, as.character), stringsAsFactors=FALSE)
#fails_csv <- read.csv("C:/Users/ihernandez/Desktop/McapGene_FailsParsing.csv")
#fails_csv <- data.frame(lapply(fails_csv, as.character), stringsAsFactors=FALSE)

#seq_control <- control_csv$Gene_Sequence
#seq_fails <- fails_csv$Gene_Sequence
#names(seq_control) <- control_csv$Gene_Name
#names(seq_fails) <- fails_csv$Gene_Name
#dna1 <- DNAStringSet(seq_control)
#dna2 <- DNAStringSet(seq_fails)
#writeXStringSet(dna1, "C:/Users/ihernandez/Desktop/Mcapgenes_control.fasta")
#writeXStringSet(dna2, "C:/Users/ihernandez/Desktop/Mcapgenes_fails.fasta")
