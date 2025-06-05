install.packages("shiny")

library(shiny)

ui <- fluidPage(
  titlePanel("샤이니 예제"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", "숫자 선택:", min = 1, max = 100, value = 50)
    ),
    mainPanel(
      plotOutput("histPlot")
    )
  )
)

server <- function(input, output) {
  output$histPlot <- renderPlot({
    hist(rnorm(input$num))
  })
}

shinyApp(ui = ui, server = server)