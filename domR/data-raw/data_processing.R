
#Script to turn raw csv into a object for Package

bonobos <- readr::read_csv("C:/Users/curley1/Dropbox/Work/DataVisualizationTalks/Rpackage/bonobos.csv")
caribou <- readr::read_csv("C:/Users/curley1/Dropbox/Work/DataVisualizationTalks/Rpackage/caribou.csv")


bonobos <- bonobos[,-1]
caribou <- caribou[,-1]

rownames(bonobos)<-colnames(bonobos)
rownames(caribou)<-colnames(caribou)

write.csv(bonobos, "data-raw/bonobos.csv", row.names=F)
write.csv(caribou, "data-raw/caribou.csv", row.names=F)
