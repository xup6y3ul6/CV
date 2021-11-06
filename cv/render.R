
setwd("cv")

rmarkdown::render("TzuYaoLin_CV.Rmd",
                  output_file = "TzuYaoLin_CV.pdf")

rmarkdown::render("TzuYaoLin_CV.Rmd",
                  output_file = paste0("TzuYaoLin_CV_", 
                                       "UCI_", 
                                       format(Sys.Date(), "%Y%m%d"), 
                                       ".pdf"))