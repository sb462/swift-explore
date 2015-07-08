getwd()
setwd("C:/Users/sandip/Documents/Coursera/course10/final")
list.files()
install.packages("filehash")
library(filehash)
vignette("filehash")
dbCreate("enDB")
library("tm")
?DirSource
en.text <- DirSource(directory = "en_US")
?PCorpus
PCorpus(x= en.text, dbControl = list(dbName= "enDB"))
