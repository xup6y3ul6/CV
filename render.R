
library(tibble)
library(purrr)

rmarkdown::render("TzuYaoLin_CV.Rmd",
                  output_file = "TzuYaoLin_CV.pdf")

output_dir <- "old_version"
rmarkdown::render("TzuYaoLin_CV.Rmd",
                  output_file = paste0(output_dir, "/TzuYaoLin_CV_", 
                                       format(Sys.Date(), "%Y%m%d"), 
                                       ".pdf"))


school_color <- tribble(
  ~school, ~color,
  "UCI", "0064A4",
  "UCLA", "2774AE",
  "IU", "990000",
  "SU", "8C1515",
  "PU", "8E6F3E",
  "NYU", "57068c",
  "WUISL", "a51417",
  "YU", "00356b",
  "LMU-MU", "00407A",
  "SMiP", "00295C"
) %>% 
  tail(1)


walk2(school_color$school, school_color$color,
      ~ rmarkdown::render("TzuYaoLin_CV.Rmd",
                          output_file = paste0(output_dir,
                                               "/TzuYaoLin_CV_", 
                                               .x, "_", 
                                               format(Sys.Date(), "%Y%m%d"), 
                                               ".pdf"),
                          params = list(schoolcolor = .y)))
      
