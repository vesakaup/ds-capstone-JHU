suppressPackageStartupMessages(c(
    library(shinythemes),
    library(shiny),
    library(tm),
    library(stringr),
    library(markdown),
    library(stylo)))

shinyUI(navbarPage(h4("Coursera: JHSPH Data Science Capstone Project"),
                   
                   theme = shinytheme("cyborg"),
                   
                   ############################### ~~~~~~~~1~~~~~~~~ ##############################  
                   ## Tab 1 - Prediction
                   
                   tabPanel("Next Word Predictor",
                            
                            fluidRow(
                                
                                column(3),
                                column(6,
                                       tags$div(textInput("input_str", 
                                                          label = h4("Enter your your text and <SPACE>:"),
                                                          value = ),
                                                tags$span(style="color:grey",("Profanity censored with *")),
                                                br(),
                                                tags$hr(),
                                                h4("The predicted next word:"),
                                                tags$span(style="color:darkred",
                                                          tags$strong(tags$h3(textOutput("text2")))),
                                                br(),
                                                tags$hr(),
                                                h4("Word auto completion: "),
                                                tags$em(tags$h4(textOutput("text1"))),
                                                align="center")
                                ),
                                column(3)
                            )
                   ),
                   
                   ############################### ~~~~~~~~2~~~~~~~~ ##############################
                   ## Tab 2 - About 
                   
                   tabPanel("About",
                            fluidRow(
                                column(2,
                                       p("")),
                                column(8,
                                       includeMarkdown("./about/about.md")),
                                column(2,
                                       p(""))
                            )
                   ),
                   
                   ############################### ~~~~~~~~F~~~~~~~~ ##############################
                   
                   ## Footer
                   
                   tags$hr(),
                   
                   tags$br(),
                   
                   tags$span(style="color:grey", 
                             tags$footer(("© 2020 - "), 
                                         tags$a(
                                             
                                             href="https:",
                                             target="_blank",
                                             "vesakaup"), 
                                         tags$br(),
                                         ("Built using"), tags$a(
                                             href="http://www.r-project.org/",
                                             target="_blank",
                                             "R"),
                                         ("&"), tags$a(
                                             href="http://shiny.rstudio.com",
                                             target="_blank",
                                             "Shiny."),
                                         
                                         align = "center"),
                             
                             tags$br()
                   )
)
)
