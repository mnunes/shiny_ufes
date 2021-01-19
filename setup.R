# setup de pacotes

necessarios <-  c("shiny", "ggplot2", "ploty")

instalados  <- rownames(installed.packages())
necessarios <- setdiff(necessarios, instalados)

install.packages(necessarios, dependencies = TRUE)

