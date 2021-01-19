# server

server <- function(input, output) {
  output$plot1 <- renderPlot(plot(cars))
  output$plot2 <- renderPlot(plot(pressure))
  output$plot3 <- renderPlot(plot(AirPassengers))
}

# layout vertical

ui <- fluidPage(
  verticalLayout(
    a(href="https://marcusnunes.me/", "Site Pessoal"),
    a(href="https://google.com.br/", "Google"),
    a(href="https://cran.r-project.org/", "R")
    )
  )

shinyApp(ui, server)


