library(shiny)

# Define UI for application that tests user's personality type
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Welcome to the Quick and Dirty MBTI Personality Test"),
        
        #####
        # Layout for the sidebar
        sidebarLayout(position="right", 
                sidebarPanel(
        
        # Radio buttons: Extraversion (E) or Introversion (I)
        radioButtons("b1", label = h4("Do you prefer to focus on the outer world or on your own inner world?"),
                     choices = list("I feel anxious being alone, I like being among people" = "E", 
                                    "I feel comfortable being alone and like things I can do on my own" = "I"), 
                     selected = "E"),
        
        # Radio buttons: Sensing (S) or Intuition (N)
        radioButtons("b2", label = h4("Do you prefer to focus on the basic information you take in or do you prefer to interpret and add meaning?"),
                     choices = list("I like information that is factual and practical" = "S", 
                                    "I tend to think about the meaning behind the facts" = "N"), 
                     selected = "S"),
        
        # Radio buttons: Thinking (T) or Feeling (F)
        radioButtons("b3", label = h4("When making decisions, do you prefer to first look at logic and consistency or first look at the people and special circumstances?"),
                     choices = list("I try being consistent and logical regardless of the specific situation involved" = "T", 
                                    "I am concerned with weighing different factors depending on the circumstances" = "F"), 
                     selected = "T"),
        
        # Radio buttons: Judging (J) or Perceiving (P)
        radioButtons("b4", label = h4("In dealing with the outside world, do you prefer to get things decided or do you prefer to stay open to new information and options?"),
                     choices = list("I prefer having things organized and bringing life under control" = "J", 
                                    "I like to adapt to the world while staying flexible and spontaneous" = "P"), 
                     selected = "J"),
        
        # Submit button
        actionButton("submit", "Submit")
        
        #####
        # Layout for the main panel
                ),
                mainPanel(
                        tabsetPanel(
                                tabPanel("Documentation",
                        br(),
                        p("Please answer the questions on the right to get your Myers-Briggs Type Indicator."),
                        p("After you are done, click the Submit button. Your result will be displayed in the Result tab."),
                        p("If you have changed any of your answers, please click the Submit button again to refresh the result.")
                        ),
                                tabPanel("Result",
                        p(textOutput("text1")),
                        p(htmlOutput("text2"))
                )
        ))
)))