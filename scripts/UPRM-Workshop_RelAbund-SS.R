library(ggplot2)

df <- read.csv('~/Desktop/Rel_Abund.csv', header = TRUE)

#Proteobacteria relative abundance across host families
#Change "fill" to variable of interest

p <- ggplot(df, aes(x=HostFamily, y=Proteobacteria, fill=HostFamily)) + 
  geom_boxplot(outlier.shape = NA, alpha = 0.7)+
  geom_jitter(aes(fill = HostFamily), size=1.5, alpha=0.9, shape = 21, color = "black", width = 0.25) +
  labs(x="Host Family", y = "Proteobacteria Relative Abundance")+
  theme_classic()
p

##Anova and tukey post-hoc test

anova.fam <- aov(d__Bacteria.p__Proteobacteria ~ HostFamily, data = df)

summary(anova.fam)

tukey.fam <- TukeyHSD(anova.fam)

tukey.fam

##Save results as data frame

tukey.df <- as.data.frame(tukey.fam$HostFamily)

write.csv(tukey.df, "tukey_prot_HostFamily_results.csv", row.names = TRUE)

###################################
##Proteobacteria relative abundance across host ecology

p.ecol <- ggplot(df, aes(x=Ecology, y=d__Bacteria.p__Proteobacteria, fill=Ecology)) + 
  geom_boxplot()+
  labs(x="Host Habitat", y = "Proteobacteria Relative Abundance")+
  theme_classic()+
  scale_fill_brewer(palette="RdBu")

p.ecol

##Anova and post-hoc test

anova <- aov(d__Bacteria.p__Proteobacteria ~ Ecology, data = df)

summary(anova)

tukey <- TukeyHSD(anova)

tukey

#Save results as data frame
tukey <- as.data.frame(tukey$Ecology)

write.csv(tukey, "tukey_prot_HostEcology_results.csv", row.names = TRUE)

###################################
##Campilobacteria relative abundance across host ecology

p.ecol.camp <- ggplot(df, aes(x=Ecology, y=d__Bacteria.p__Campilobacterota, fill=Ecology)) + 
  geom_boxplot()+
  labs(x="Host Ecology", y = "Campilobacterota Relative Abundance")+
  theme_classic()+
  scale_fill_brewer(palette="Set2")

p.ecol.camp

###################################
##Firmicutes relative abundance across host families

p.firm.fam <- ggplot(df, aes(x=HostFamily, y=Firmicutes, fill=HostFamily)) + 
  geom_boxplot(outlier.shape = NA, alpha = 0.7)+
  geom_jitter(aes(fill = HostFamily), size=1.5, alpha=0.9, shape = 21, color = "black", width = 0.25) +
  labs(x="Host Family", y = "Firmicutes Relative Abundance")+
  theme_classic()

p.firm.fam

##Anova and tukey post-hoc test

anova.firm.fam <- aov(d__Bacteria.p__Firmicutes ~ HostFamily, data = df)

summary(anova.firm.fam)

tukey.firm.fam <- TukeyHSD(anova.firm.fam)

tukey.firm.fam

##Save results as data frame

tukey.firm.df <- as.data.frame(tukey.firm.fam$HostFamily)

write.csv(tukey.firm.df, "tukey_firm_HostFamily_results.csv", row.names = TRUE)
