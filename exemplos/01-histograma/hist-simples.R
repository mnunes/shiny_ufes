# global

library(shiny)

# ui.R

ui <- fluidPage(
  sliderInput(inputId = "num", 
              label = "Determine o tamanho amostral", 
              value = 50, min = 1, max = 1000),
  plotOutput("hist")
)

# server.R

server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num), main = "Exemplo para UFES")
  })
}

# app rodando

shinyApp(ui, server)
