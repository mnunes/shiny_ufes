function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    bm %>%
      select(x=input$xcol, y=input$ycol, Ano, Regiao) %>%
      filter(Ano >= input$slider[1]) %>%
      filter(Ano <= input$slider[2])
  })
  
  output$plot1 <- renderPlotly({
    g <- ggplot(selectedData(), aes(x = x, y = y, colour = Regiao)) +
      geom_point() +
      scale_x_continuous(labels = comma_format()) +
      scale_y_continuous(labels = comma_format())
    ggplotly(g)
  })
  
}

