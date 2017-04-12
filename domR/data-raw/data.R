bonobos <- read.csv("data-raw/bonobos.csv",
                  stringsAsFactors = FALSE)
caribou <- read.csv("data-raw/caribou.csv",
                   stringsAsFactors = FALSE)
devtools::use_data(bonobos, caribou, overwrite = TRUE)
