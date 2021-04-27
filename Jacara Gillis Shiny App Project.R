library(shiny)
library(readxl)
bskballvsfootballdata <- read_excel("ShinyProject/bskballvsfootballdata.xls")
View(bskballvsfootballdata)
print(bskballvsfootballdata)

bskballvsfootballdata

ui <- fluidPage(
    navbarPage("Height Data",
               tabPanel("Main Tab", "Display Page for Main Tab"),
    titlePanel("Jae's Interactive Web Page for Statistical Analysis"),
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "num",
                        label = "Choose the sample population and observe the outcome",
                        value = 70, min = 1, max = 140),
            textInput(inputId = "title",
                      label = "Choose your title down below",
                      value = "Customize your title here!"),
            actionButton(inputId = "clicks",
                    label = "Press Me"),
        ),
        mainPanel(
            h1("Professional Basketball Players Height Dataset"),
            h3("This webpage features an easy and convinient way of viewing a height dataset in histogram format."),
            h4("You may customize your title and input your numerical range as needed. Play with the slider bar and see how your statistics change. Share with your coworkers, friends, and colleagues."),
            plotOutput("hist"),
            verbatimTextOutput("stats"),
            strong("Above is your created histogram for the basketball player height dataset."),
            code("Refer to the markdown file for more information."),
            h3("Histogram Interpretation"),
            em("Histograms let you view the distribution frequency of continiuos and categorial data."),
            em("The histogram being presented on this page represents the numerical distribution of. The histogram is based upon a sample population of 40 professional basketball players."),
            em("A histogram is most accurate when given approximately 100 data points. If the bars of frequency display a bell-shaped curve, then the dataset is referred to as a normal distribution. Outliers can also be determined based upon the distribution of values."),
            br(),
        )
        )
),
)



server <- function(input, output) {
    observeEvent(input$clicks, {
        print(as.numeric(input$clicks))
    })
    output$hist <- renderPlot({
        title <- "100 random normal values"
        hist(rnorm(input$num), main = isolate({input$title}))})
    }
    
shinyApp(ui = ui, server = server)

