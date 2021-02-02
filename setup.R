# setup de pacotes

necessarios <-  c("shiny", 
                  "tidyverse", 
                  "ploty", 
                  "shinythemes", 
                  "knitr", 
                  "ggfortify",
                  "kableExtra",
                  "scales")

instalados  <- rownames(installed.packages())
necessarios <- setdiff(necessarios, instalados)

install.packages(necessarios, dependencies = TRUE)

