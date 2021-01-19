library(shiny)

# ui.R

ui <- fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do dateInput",
            hr(), # inserir uma linha
            # dateInput
            dateInput(inputId = "data",
                      label = "Selecione uma data:",
                      min = "2010-01-01",
                      max = "2030-12-31")
  )

# server.R:

server <- shinyServer(function(input, output){})

# app rodando

shinyApp(ui, server)
