library(shiny)
library(ggplot2)
library(plotly)

# ui

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do plotly",
            hr(), # inserir uma linha
            fluidRow(
              column(6, plotlyOutput("grafico1", width = 800))
            )
  ) )

# server

server <- shinyServer(function(input, output){
  output$grafico1 <- renderPlotly({
    g <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width, colour = Species)) +
      geom_point() +
      labs(x = "Comprimento da Petala", y = "Largura da Petala")
    ggplotly(g)
  })
})

# app rodando

shinyApp(ui, server)
