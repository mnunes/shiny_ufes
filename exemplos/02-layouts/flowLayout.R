# server

server <- function(input, output) {
  output$plot1 <- renderPlot(plot(cars, main = input$letter))
  output$plot2 <- renderPlot(plot(pressure))
  output$plot3 <- renderPlot(plot(AirPassengers))
}

# layout flow

ui <- flowLayout(
  numericInput("rows", "Quantas linhas", 5),
  selectInput("letter", "Qual letra?", LETTERS),
  sliderInput("value", "Qual valor?", 0, 100, 50),
  plotOutput("plot1"),
  plotOutput("plot2"),
  plotOutput("plot3")
)

shinyApp(ui, server)

