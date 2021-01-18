# setup de pacotes

necessarios <-  c("shiny")

instalados  <- rownames(installed.packages())
necessarios <- setdiff(necessarios, instalados)

install.packages(necessarios, dependencies = TRUE)

