```r
install.packages("RefManageR")  
library(RefManageR)
```

# Get citation for the package
```r
pkg_citation <- citation("stats")
```

# Convert citation to BibTeX format
```r
bib_data <- toBibtex(pkg_citation)
```
# Write BibTeX to a file
```r
writeLines(bib_data, "stats.bib")
```
# Read the BibTeX file into R
```r
bib <- ReadBib("stats.bib", check = FALSE)
```

```r
source("./Function/convert_to_ris.R")
```

```r
ris_data <- convert_to_ris(bib)

writeLines(ris_data, "stats.ris")
```
