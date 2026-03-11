library(ggplot2)

df <- read.csv("~/Desktop/rarefied_42samp_rel_freq_table.csv", header = TRUE)

#Saccharomycetes relative abundance across sample type
#Change "fill" to variable of interest

plot <- ggplot(df, aes(x=Sample_Type, y=Saccharomycetes, fill=Sample_Type)) + 
  geom_boxplot(outlier.shape = NA, alpha = 0.7)+
  geom_jitter(aes(fill = Sample_Type), size=1.5, alpha=0.9, shape = 21, color = "black", width = 0.25) +
  labs(x="Sample Type", y = "Saccharomycetes Relative Abundance")+
  theme_classic()

#View the plot
plot

##Anova and tukey post-hoc test

anova.samp.type <- aov(Saccharomycetes ~ Sample_Type, data = df)

summary(anova.samp.type)

tukey.samp.type <- TukeyHSD(anova.samp.type)

tukey.samp.type

##Save results as data frame

tukey.df <- as.data.frame(tukey.samp.type$Sample_Type)

write.csv(tukey.df, "~/Desktop/tukey_prot_Sample_Type_results.csv", row.names = TRUE)

###################################
##Try with different microbial taxa!
