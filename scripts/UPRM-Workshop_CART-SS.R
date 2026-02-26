install.packages("party")

###############
#PARTY Shannon
###############

library(party)

data <- read.csv("~/Desktop/Shannon_Diversity.csv")

#Look at the data structure
str(data)

#Save data as factors
#Change data to match metadata
data$SpeciesID <- as.factor(data$SpeciesID)

data$HostFamily <- as.factor(data$HostFamily)

data$HostSubOrder <- as.factor(data$HostSubOrder)

data$HostOrder <- as.factor(data$HostOrder)

data$Island<- as.factor(data$Island)

#Check data structure again

str(data)

#Construct formula with shannon diversity as the response variable, and all other variables as the predictor variables (independent)
myformula <- shannon ~ SpeciesID + HostFamily + HostSubOrder + HostOrder + Island 

#Run CART command
ctree <- ctree(myformula, data = data)

#Visualize CART output
plot(ctree)

ctree

##Repeat with other alpha diveristy metrics

##################
#PARTY Faith's Pd
##################

data <- read.csv("~/Desktop/2024_01_12_CART_FaithPD_WithIslandSize.csv")

str(data)

data$SpeciesID <- as.factor(data$SpeciesID)

data$HostFamily <- as.factor(data$HostFamily)

data$HostSubOrder <- as.factor(data$HostSubOrder)

data$HostOrder <- as.factor(data$HostOrder)

data$Island<- as.factor(data$Island)

str(data)

myformula <- faith_pd ~ SpeciesID + HostFamily + HostSubOrder + HostOrder + Island 

ctree <- ctree(myformula, data = data)

plot(ctree)

ctree
