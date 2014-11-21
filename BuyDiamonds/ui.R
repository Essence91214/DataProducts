#ui.R
shinyUI(fluidPage(
  titlePanel("Welcome to a New Enriched Diamond-Shopping Experience!"),
  fluidRow(
    column(12, 
          h3("Description"), 
          "This is a prototype application of a service that can be used by  
          diamond merchants to display to their diamond shoppers a list of 
          available choices at their store,  customized to the shoppers needs and budget.", 
           br(),
          h3("How to use BuyDiamonds"), 
          h5("Input"),
          "Imagine you are diamond shopping, let 'BuyDiamonds' know specifications of your
          shopping expedition by provide the following information:",
          tags$ol(
          tags$li("whether you are interested in just one (solitaire) diamond or multiple diamonds,"),  
          tags$li("a range  for your 'shopping budget',") ,
          tags$li("a range for the 'size of diamonds', and"), 
          tags$li("cut of diamonds.") 
          ),
          "The shopping budget is the amount of money you have set aside for this purchase.",  
          br(),
          h5("Output of the app"), 
          "As per the budget and other specifications provided by you, the app computes a subset of the diamonds in the 
          store and displays it.",
          br(),
          "If you specified that you are interested in multiple 
          diamonds then for each diamond in the list, it provides two additional pieces of information:",
          tags$ul(
          tags$li("the number of diamonds of that kind you can purchase within your budget, and"),
          tags$li("the combined price.")   
          ),
          "You might then choose to look at some of diamonds in the list and buy them or iteratively 
          find the best buy for your money."
    )),
  fluidRow(
    column(12,
           offset =4,
          br(),
          h4("Hope you enjoy shopping with us!"),
          br())),
  fluidRow(
    column(12,
           offset =3,
          img(src= 'diamonds.png', height = 400, width = 400))),
  fluidRow(
    column(12, offset =2,
          h6("(Image source: http://videohive.net/item/falling-diamonds-4-different-overlays/156459)"),
          br()      
    )),
  fluidRow(h3("Let's have your inputs now"),
    column(12, 
           radioButtons("numberIP", h5("How many diamonds would you like?"), choices = c("Solitaire (only 1)", "Multiple"), selected = "Multiple"),    
           sliderInput("budgetIP", h5("Range of your budget (x$1000)"), 0 , 50, value = c( 2, 10), step = 0.5, round = FALSE,  locale = "us", ticks = TRUE, animate = FALSE),
           sliderInput("sizeIP", h5("Range of size of diamonds in carats"), 0.2, 5.0, value = c(0.6, 1.4), step = 0.2, round = FALSE, locale = "us", ticks = TRUE, animate = FALSE),  
           checkboxGroupInput("cutIP", h5("Choose one or more cut options"), 
                              choices = c("Fair", "Good", "VeryGood", "Premium", "Ideal", "any"), selected = "Ideal"),
           submitButton("Submit" )
           )
    ),
  fluidRow(         
    column(12,
           br(),
           h3(textOutput("title1")),
           tableOutput("NewData")  
            )      
  )          
))
    
  