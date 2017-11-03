


index_dna = read.csv("SraRunTable_DNA.txt", sep="\t")
index_rna = read.csv("SraRunTable_RNA_dubin.txt", sep="\t")

ecotype = 1063
index_ecotype = data.frame(subset(index_rna, accession_number_s == ecotype),
                           subset(index_dna, ecotype_s == ecotype),stringsAsFactors=FALSE)

SRR_10C = as.vector(subset(index_ecotype, growth_temperature_s == "10C")[1,"Run_s"])
SRR_16C = as.vector(subset(index_ecotype, growth_temperature_s == "16C")[1,"Run_s"])

filename_10C = paste0("./FromJose/RNA-seq/Dubin-data/",SRR_10C, "ReadsPerGene.out.tab")
filename_16C = paste0("./FromJose/RNA-seq/Dubin-data/",SRR_16C, "ReadsPerGene.out.tab")

rna_10C = read.csv(filename_10C, sep="\t")
rna_16C = read.csv(filename_16C, sep="\t")
