#Install tidyverse, ggplot2, and RColorBrewer if not already
#install.packages("RColorBrewer")
#install.packages("tidyverse")
#install.packages("ggplot2")

#install qiime2R
if (!requireNamespace("devtools", quietly = TRUE)){install.packages("devtools")}
devtools::install_github("jbisanz/qiime2R")

library(tidyverse)
library(qiime2R)
library(ggplot2)
library(RColorBrewer)

############################
##Unweighted-Unifrac Plots##
############################

#Import qiime2 data and metadata
#Change file paths to location and names of your files

total_SVs <- read_qza("~/Desktop/rarefied_table.qza")

total_RPCA <- read_qza("~/Desktop/unweighted_unifrac_pcoa_results.qza")

total_metadata <- read_csv("~/Desktop/rarefied_metadata.csv")

#Save PCoA data as a data frame
pcoa_df <- total_RPCA$data$Vectors

#Check for correct SampleIDs and check header
head(total_RPCA)

#Link metadata to PCoA data
merged_data <- merge(pcoa_df, total_metadata, by = "SampleID")

#Modify the color variable to metadata column of interest

#Ecology
ggplot(merged_data, aes(x = PC1, y = PC2, color = Ecology)) +
  geom_point(size = 3) +
  stat_ellipse(level = 0.95) +
  theme_minimal() +
  labs(x = paste0("PC1 (", round(total_RPCA$data$ProportionExplained[1] * 100, 2), "%)"),
       y = paste0("PC2 (", round(total_RPCA$data$ProportionExplained[2] * 100, 2), "%)"),
       title = "Unweighted PCoA Plot") +
  theme(axis.text = element_text(size = 12), axis.title = element_text(size = 14))

#Island
ggplot(merged_data, aes(x = PC1, y = PC2, color = Island)) +
  geom_point(size = 3) +
  stat_ellipse(level = 0.95) +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal() +
  labs(x = paste0("PC1 (", round(total_RPCA$data$ProportionExplained[1] * 100, 2), "%)"),
       y = paste0("PC2 (", round(total_RPCA$data$ProportionExplained[2] * 100, 2), "%)"),
       title = "Unweighted PCoA Plot") +
  theme(axis.text = element_text(size = 12), axis.title = element_text(size = 14))

############################
###Weighted-Unifrac Plots###
############################

#Import qiime2 data and metadata
#Change file paths to location and names of your files

total_SVs <- read_qza("~/Desktop/rarefied_table.qza")

total_RPCA <- read_qza("~/Desktop/weighted_unifrac_pcoa_results.qza")

total_metadata <- read_csv("~/Desktop/rarefied_metadata.csv")

#Save PCoA data as a data frame
weighted_pcoa_df <- total_RPCA$data$Vectors

merged_data <- merge(weighted_pcoa_df, total_metadata, by = "SampleID")

#Modify the color variable to metadata column of interest

#Ecology
ggplot(merged_data, aes(x = PC1, y = PC2, color = Ecology)) +
  geom_point(size = 3) +
  stat_ellipse(level = 0.95) +
  theme_minimal() +
  labs(x = paste0("PC1 (", round(total_RPCA$data$ProportionExplained[1] * 100, 2), "%)"),
       y = paste0("PC2 (", round(total_RPCA$data$ProportionExplained[2] * 100, 2), "%)"),
       title = "Weighted PCoA Plot") +
  theme(axis.text = element_text(size = 12), axis.title = element_text(size = 14))

##Island
ggplot(merged_data, aes(x = PC1, y = PC2, color = Island)) +
  geom_point(size = 3) +
  stat_ellipse(level = 0.95) +
  scale_color_brewer(palette = "Dark2") +
  theme_minimal() +
  labs(x = paste0("PC1 (", round(total_RPCA$data$ProportionExplained[1] * 100, 2), "%)"),
       y = paste0("PC2 (", round(total_RPCA$data$ProportionExplained[2] * 100, 2), "%)"),
       title = "Weighted PCoA Plot") +
  theme(axis.text = element_text(size = 12), axis.title = element_text(size = 14))

#Other good color brewer palettes: "Paired" and "Dark2"
#Can also set colors manually. Example: scale_color_manual(values=c("#D53E4F", "#4D4D4D", "#35978F"))


