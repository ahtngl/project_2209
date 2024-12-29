
library(flowCore)
my_fcs <- read.FCS("/Users/alihanhatunoglu/Desktop/2209/LMD_hepsi/LMD_data_num/1 ", dataset = 1) 

transformed_data <- exprs(my_fcs) 

write.csv(transformed_data, file = "/Users/alihanhatunoglu/Desktop/2209/CSV_log/cvs_log_1.csv")


citation()
citation("flowCore")
