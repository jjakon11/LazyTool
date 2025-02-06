install.packages("RefManageR")  
library(RefManageR)

# Get citation for the package
pkg_citation <- citation("stats")

# Convert citation to BibTeX format
bib_data <- toBibtex(pkg_citation)

# Write BibTeX to a file
writeLines(bib_data, "stats.bib")

# Read the BibTeX file into R
bib <- ReadBib("stats.bib", check = FALSE)

source("./Function/convert_to_ris.R")

ris_data <- convert_to_ris(bib)

writeLines(ris_data, "stats.ris")
