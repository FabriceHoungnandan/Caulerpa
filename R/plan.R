

#' Write basic plan
#'
#' @return A drake plan
#' @export
#'
#' @importFrom drake drake_plan
#' @examples
write_plan <- function() {
  drake::drake_plan(
    #load data
    caulerpa = data_caulerpa()
    #wrangle data
    ursus= ursus_extract(caulerpa),
    ursus_rename=rename_caulerpa
    # report 
    report = rmarkdown::render(
      drake::knitr_in("text/report.Rmd"),
      output_file = drake::file_out("output/text/report.html"),
      quiet = FALSE,
      output_dir = "output/text/"
    )
  )
}