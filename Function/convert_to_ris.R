convert_to_ris <- function(bib) {
  ris <- c()
  
  for (entry in bib) {
    # RIS reference type (assuming a book format for package documentation)
    ris <- c(ris, "TY  - BOOK")  
    
    # Mapping BibTeX fields to RIS fields
    if (!is.null(entry$title)) ris <- c(ris, paste0("TI  - ", entry$title))
    
    # Handle authors correctly, checking if it's a list
    if (!is.null(entry$author)) {
      authors <- as.character(entry$author)  # Convert to character safely
      for (author in authors) {
        ris <- c(ris, paste0("AU  - ", author))  # Each author on a separate line
      }
    }
    
    if (!is.null(entry$year)) ris <- c(ris, paste0("PY  - ", entry$year))
    if (!is.null(entry$organization)) ris <- c(ris, paste0("PB  - ", entry$organization))
    if (!is.null(entry$address)) ris <- c(ris, paste0("CY  - ", entry$address))
    if (!is.null(entry$url)) ris <- c(ris, paste0("UR  - ", entry$url))
    
    # End RIS entry
    ris <- c(ris, "ER  - ")
  }
  
  return(ris)
}
