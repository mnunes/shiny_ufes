# server para todos os exemplos

server <- function(input, output) {
  output$plot1 <- renderPlot(plot(cars))
  output$plot2 <- renderPlot(plot(pressure))
  output$plot3 <- renderPlot(plot(AirPassengers))
}
  
# mesmo tamanho

ui <- splitLayout(
  plotOutput("plot1"),
  plotOutput("plot2")
)
shinyApp(ui, server)
  
# tamanhos diferentes

ui <- splitLayout(cellWidths = c("25%", "75%"),
                  plotOutput("plot1"),
                  plotOutput("plot2")
)
shinyApp(ui, server)
  
# 300 pixels de largura, com borda
# e espacamento

ui <- splitLayout(
  style = "border: 10px solid red;",
  cellWidths = 300,
  cellArgs = list(style = "padding: 6px"),
  plotOutput("plot1"),
  plotOutput("plot2"),
  plotOutput("plot3")
)

shinyApp(ui, server)

