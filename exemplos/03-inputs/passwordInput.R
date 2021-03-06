library(shiny)

# ui

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do textInput, numericInput e passwordInput",
            hr(), # inserir uma linha
            # textInput
            textInput(inputId = "texto",
                      label = "Qual o seu nome?", value = "Apague e digite aqui"),
            # numericInput
            numericInput(inputId = "numero",
                         label = "Escolha um numero de 0 a 10", 
                         value = 3,
                         step = 1,
                         min = 0,
                         max = 10),
            # passwordInput
            passwordInput(inputId = "senha",
                          label = "Digite sua senha")
  )
)

# server

server <- shinyServer(
  function(input, output){}
)

# app rodando

shinyApp(ui, server)
