data("iris")
iris

saveRDS(object = iris, file = "my_data_frame.rds")
iris2 <- readRDS(file = "my_data_frame.rds")




ui <- fluidPage(
    navbarPage("Flower Dataset",
               tabPanel("Main Tab", "Display Page for Main Tab"),
    titlePanel("Interactive Web Page for Statistical Analysis"),
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "num",
                        label = "Choose the sample population and observe the outcome",
                        value = 200, min = 100, max = 400),
            textInput(inputId = "title",
                      label = "Choose your title down below",
                      value = "Customize your title here!"),
            actionButton(inputId = "clicks",
                    label = "Press Me"),
        ),
        mainPanel(
            h1("Flower Dataset"),
            h3("This web page features an easy and convinient way of viewing the iris dataset in histogram format."),
            h4("You may customize your title and input your numerical range as needed. Play with the slider bar and see how your statistics change. Share with your coworkers, friends, and colleagues."),
            plotOutput("hist"),
            verbatimTextOutput("stats"),
            strong("Above is your created histogram for the iris dataset."),
            code("Refer to the markdown file for more information."),
            h3("Histogram Interpretation"),
            em("Histograms let you view the distribution frequency of continious and categorial data."),
            em("The histogram being presented on this page represents the numerical distribution of the dataset. The histogram is based upon a sample population of 150 flowers."),
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