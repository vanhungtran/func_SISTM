need_packages <- function(){
  
  require_pkgs <- c("Rserve", "RSclient", "ellipse", "scatterplot3d", "Cairo", "randomForest", "caTools", "e1071", "som",
                    "impute", "pcaMethods", "RJSONIO", "ROCR", "globaltest", "GlobalAncova", "Rgraphviz", "preprocessCore", 
                    "genefilter", "pheatmap", "SSPA", "sva", "Rcpp", "pROC", "data.table", "limma", "car", "fitdistrplus",
                    "lars", "Hmisc", "magrittr", "methods", "xtable", "pls", "caret", "lattice", "igraph", "gplots", 
                    "KEGGgraph", "reshape", "RColorBrewer", "tibble", "siggenes", "plotly", "fgsea", "metap", "reshape2", "scales")
  
  list_installed <- installed.packages()
  
  new_pkgs <- subset(require_pkgs , !(require_pkgs  %in% list_installed[, "Package"]))
  
  if(length(new_pkgs)!=0){
    
    if (!requireNamespace("BiocManager", quietly = TRUE))
      install.packages("BiocManager")
    BiocManager::install(new_pkgs)
    print(c(new_pkgs, " packages added..."))
  }
  
  if((length(new_pkgs)<1)){
    print("No new packages added...")
  }
}



need_packages()

