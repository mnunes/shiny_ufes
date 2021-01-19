# ui

ui <- fluidPage(
  
  # titulo do App
  titlePanel("Oi Shiny!"),
  
  sidebarLayout(
    
    # sidebar com um slider
    sidebarPanel(
      sliderInput("obs",
                  "Numero of observacoes:",
                  min = 0,
                  max = 1000,
                  value = 500)
    ),
    
    # Mostrar o grafico gerado
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# server

server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
}

# app rodando

shinyApp(ui, server)

