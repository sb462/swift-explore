getwd()
# set flag for Windows vs Mac.
# Windows 0, Mac 1,
system.flag <- 1
if (system.flag == 0){
setwd("C:/Users/sandip/Documents/Coursera/course10/final")
}else {
  setwd("/Users/admin/Desktop/Personal/Coursera/course10/final")
}
list.files()
file.remove("enDB")
# install necessary packages and load the libraries
install.packages("filehash")
install.packages("tm")
library(filehash)
library(tm)
vignette("filehash")
#dbCreate("enDB")
en.text <- DirSource(directory = "en_US")
?PCorpus
en.corpus <- PCorpus(x= en.text, dbControl = list(dbName= "enDB"))
CMetaData(en.corpus)
summary(en.corpus)
meta(en.corpus[[1]])

en.corpus.text <- tm_map(en.corpus, as.PlainTextDocument)
en.corpus.text <- tm_map(en.corpus.text, stripWhitespace)
en.corpus.text <- tm_map(en.corpus.text, tolower)
head(en.corpus.text[[1]])
en.db <- dbInit("enDB")
