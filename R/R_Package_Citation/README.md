# Story...
I use Zotero for managing references, write scientific papers, and conduct extensive analyses using R and RStudio. One day, while writing my paper, I needed to cite an R package I was using. However, the only option available was to use the built-in citation("package name") function. This required me to manually copy all the citation details, which was time-consuming and inefficient.

## 1. Install.packages
```r
install.packages("RefManageR")  
library(RefManageR)
```

## 2. Get citation for the package
```r
pkg_citation <- citation("stats")
```

## 3. Convert citation to BibTeX format
```r
bib_data <- toBibtex(pkg_citation)
```
## 4.Write BibTeX to a file
```r
writeLines(bib_data, "stats.bib")
```
## 5. Read the BibTeX file into R
```r
bib <- ReadBib("stats.bib", check = FALSE)
```

## 6. Having the conversion
This is the function that I wrote to convert the bib file to .ris file
```r
source("./Function/convert_to_ris.R")

ris_data <- convert_to_ris(bib)

writeLines(ris_data, "stats.ris")
```

Please let me know if there are any problem or question when you are converting.

<span style="color:#808080"> **Chen-Chia Ku** </span>.
*jjakon11@gmail.com*

