library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
        # After the Submit button is clicked 
        init <- reactiveValues()
        observe({
                if(input$submit > 0) {
                        init$pasted <- paste("Your personality type is ", 
                                                     input$b1, input$b2, input$b3, input$b4, sep="")
                        init$link <- paste("https://en.wikipedia.org/wiki/", 
                                                   input$b1, input$b2, input$b3, input$b4, sep="")
                        init$linktext <- a("Find out more about it here", href=init$link, target="_blank")
                }
        })
        
        # Output with isolation: avoiding dependency
        output$text1 <- renderText({ 
                input$submit
                isolate(init$pasted)
        })
        
        output$text2 <- renderUI({ 
                input$submit
                isolate(init$linktext)
        })
})