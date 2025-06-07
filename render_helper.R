# This script renders a Quarto document to one specified format
# and immediately opens the output file.
library(quarto)

### Change this to select the desired format
format_choice <- c("pdf", "html", "docx")[1]
###

# Define the formats and corresponding output files
formats <- list(
  pdf = list(
    quarto_format = "typst",
    output_file = "docs/master-template.pdf"
  ),
  html = list(
    quarto_format = "html",
    output_file = "docs/master-template.html"
  ),
  docx = list(
    quarto_format = "docx",
    output_file = "docs/master-template.docx"
  )
)

format_info <- formats[[format_choice]]

# Render the document to the specified format
quarto_render(output_format = format_info$quarto_format, as_job = FALSE)

# Open the output file in the default application
shell.exec(normalizePath(format_info$output_file))
