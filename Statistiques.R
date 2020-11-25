setwd("~/Documents/3A/Morphologie_Mathematique")
library(data.table)
library(varhandle)

GC_moins = read.csv(file = "GC_moins.csv", sep = ";", header = FALSE)
GC_plus = read.csv(file = "GC_plus.csv", sep = ";", header = FALSE)
GC_placebo = read.csv(file = "GC_placebo.csv", sep = ";", header = FALSE)
GC_creme = read.csv(file = "GC_creme.csv", sep = ";", header = FALSE)

rownames(GC_moins) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")
rownames(GC_plus) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")
rownames(GC_placebo) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")
rownames(GC_creme) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")

GC_moins = transpose(GC_moins)
GC_plus = transpose(GC_plus)
GC_placebo = transpose(GC_placebo)
GC_creme = transpose(GC_creme)

colnames(GC_moins) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")
colnames(GC_plus) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")
colnames(GC_placebo) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")
colnames(GC_creme) = c("Epaisseur_1", "Epaisseur_2", "Epaisseur_3", "Degre_Invagination")

##### Epaisseur Moyenne #####

##### Technique 1 #####
boxplot(GC_moins$Epaisseur_1, GC_plus$Epaisseur_1,GC_placebo$Epaisseur_1,GC_creme$Epaisseur_1, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne 1",main = "Comparaison des épaisseurs moyennes suivant les traitements")

##### Technique 2 #####

boxplot(GC_moins$Epaisseur_2, GC_plus$Epaisseur_2,GC_placebo$Epaisseur_2,GC_creme$Epaisseur_2, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne 2",main = "Comparaison des épaisseurs moyennes suivant les traitements")

##### Technique 3 #####

boxplot(GC_moins$Epaisseur_3, GC_plus$Epaisseur_3,GC_placebo$Epaisseur_3,GC_creme$Epaisseur_3, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne 3",main = "Comparaison des épaisseurs moyennes suivant les traitements")


##### Technique 1 #####
boxplot(GC_moins$Epaisseur_1, GC_plus$Epaisseur_1,GC_placebo$Epaisseur_1,GC_creme$Epaisseur_1, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne 1",main = "Comparaison des épaisseurs moyennes suivant les traitements", outline = FALSE)

##### Technique 2 #####

boxplot(GC_moins$Epaisseur_2, GC_plus$Epaisseur_2,GC_placebo$Epaisseur_2,GC_creme$Epaisseur_2, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne 2",main = "Comparaison des épaisseurs moyennes suivant les traitements", outline = FALSE)

##### Technique 3 #####

boxplot(GC_moins$Epaisseur_3, GC_plus$Epaisseur_3,GC_placebo$Epaisseur_3,GC_creme$Epaisseur_3, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne 3",main = "Comparaison des épaisseurs moyennes suivant les traitements", outline = FALSE)


##### Degre d'invagination #####

boxplot(GC_moins$Degre_Invagination, GC_plus$Degre_Invagination,GC_placebo$Degre_Invagination,GC_creme$Degre_Invagination, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Degre d\'invagination",main = "Comparaison des degres d\'invagination suivant les traitements")


##### Verite terrain #####
boxplot(GC_moins$Degre_Invagination, GC_plus$Degre_Invagination,GC_placebo$Degre_Invagination,GC_creme$Degre_Invagination, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Degré d\'invagination",main = "Comparaison des degrés d\'invagination suivant les traitements", outline = TRUE)

VT_moins = read.csv(file = "VT_Moins.csv", sep = ";",dec = ",", header = TRUE)
VT_plus = read.csv(file = "VT_Plus.csv", sep = ";",dec = ",", header = TRUE)
VT_placebo = read.csv(file = "VT_Placebo.csv", sep = ";",dec = ",", header = TRUE)
VT_creme = read.csv(file = "VT_Creme.csv", sep = ";",dec = ",", header = TRUE)


boxplot(VT_moins$Epaisseur, VT_plus$Epaisseur,VT_placebo$Epaisseur,VT_creme$Epaisseur, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne ",main = "Comparaison des épaisseurs moyennes suivant les traitements - Verite terrain", outline = FALSE)
boxplot(VT_moins$Degre.Invaginaion, VT_plus$Degre.Invaginaion,VT_placebo$Degre.Invagination,VT_creme$Degre.Invagination, col = c('red',"green","blue", "yellow"), names = c('GC-', "GC+","Placebo","Creme"), xlab = "Condition", ylab = "Epaisseur moyenne ",main = "Comparaison des degres d\'invagination suivant les traitements - Verite terrain", outline = FALSE)

