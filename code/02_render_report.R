here::i_am(
  "code/02_render_report.R"
)

rmarkdown::render(
  here::here("report.Rmd")
)
# code/02_render_report.R
# Render the final R Markdown report

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Please install.packages('rmarkdown')")
}

rmarkdown::render("report.Rmd")
