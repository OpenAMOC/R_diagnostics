#' Reads time code began to run, used again at the end of code to identify time code took to run, useful for diagnostics/optimising
start_time <- Sys.time()

#' example directories
input_dir <- ("//example/documents/input")

output_dir <- gsub("//example/documents/output")


#' Tells user how long code took to run
end_time <- Sys.time()
duration <- (end_time - start_time)
print(duration)

#' Saves details of the code run including the directories, timings of the run, memory usage and any warnings to a txt file
setwd(output_dir)
sink("Code_diagnostics.txt")
cat("**Diagnostics document for NCVO R code**\n\n")
cat("Input directory: ")
cat(input_dir)
cat("\nOutput directory: ")
cat(output_dir)
cat("\n\n")
cat("Start time")
print(start_time)
cat("Stop time")
print(end_time)
print(duration)
cat("\n")
print("Ncells refers to con cells used, Vcells refers to vectors used")
print(gc())
cat("\n")
print(warnings())
cat("\n R Version and Platform: \n")
print(R.Version())
sink()

setwd(input_dir)