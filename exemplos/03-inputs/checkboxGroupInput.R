library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do checkboxGroupInput",
            hr(), # inserir uma linha
            # checkboxGroupInput
            checkboxGroupInput(inputId = "opcoes",
                               label = "Estatisticas descritivas:", choices = c("Maximo", "Q3", "Mediana", "Q1", "Minimo"), 
                               selected = c("Mediana")),
            # output
            plotOutput("grafico")
  ) )

# server.R:

server <- shinyServer(function(input, output){
    output$grafico <- renderPlot({
      # dados do conjunto cars
      plot(cars, main = "Grafico de dispersao cars", xlab="velocidade", ylab="distancia")
      if("Maximo" %in% input$opcoes){
        abline(h = quantile(cars$dist, 1), col = rainbow(5)[5], lty = 2) 
        text(5, quantile(cars$dist, 1) + 2, "Maximo", col = rainbow(5)[5])
      }
      if("Q3" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0.75), col = rainbow(5)[4], lty = 2) 
        text(5, quantile(cars$dist, 0.75) + 2, "Q3", col = rainbow(5)[4])
      }
      if("Mediana" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0.50), col = rainbow(5)[3], lty = 2) 
        text(5, quantile(cars$dist, 0.50) + 2, "Mediana", col = rainbow(5)[3])
      }
      if("Q1" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0.25), col = rainbow(5)[2], lty = 2) 
        text(5, quantile(cars$dist, 0.25) + 2, "Q1", col = rainbow(5)[2])
      }
      if("Minimo" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0), col = rainbow(5)[1], lty = 2) 
        text(5, quantile(cars$dist, 0) + 2, "Minimo", col = rainbow(5)[1])
        }
      })
  })

# app rodando

shinyApp(ui, server)
