#update1
library(rentrez)

entrez_dbs( ) # list of all databases


pubmed <- entrez_search( db="pubmed", term="breast cancer", retmax=100)

pubmed$count # number of articles returned

pubmed$ids # extract PubMed IDs, each corresponds to a paper

summ <- entrez_summary(db="pubmed", id=pubmed$ids[1]) # retrieve more info about a paper

summ$title # title of first article

# first define a function that runs the query and returns number of articles
search_year <- function(year, term) {
  query <- paste(term, "AND (", year, "[PDAT])")
  entrez_search(db="pubmed", term=query, retmax=0)$count
}

year <- 2008:2016     # define time range
papers <- sapply(year, search_year, term="ebola", USE.NAMES=FALSE)
plot(year, papers, type='b', main="Ebola")

# first define a function that runs the query and returns number of articles
search_year <- function(year, term) {
  query <- paste(term, "AND (", year, "[PDAT])")
  entrez_search(db="pubmed", term=query, retmax=0)$count
}

year <- 2008:2016     # define time range
papers <- sapply(year, search_year, term="ebola", USE.NAMES=FALSE)
plot(year, papers, type='b', main="Ebola")
