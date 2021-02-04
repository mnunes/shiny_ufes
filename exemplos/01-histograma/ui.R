fluidPage(
  sliderInput(inputId = "num", 
              label = "Escolha seu destino", 
              value = 25, min = 1, max = 100, step = 0.01),
  plotOutput("hist")
)
