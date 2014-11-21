#server.R
library(ggplot2)
data(diamonds)
newdiamonds <- read.csv("diamonds.csv", header = TRUE)
SubsetDiamonds <- newdiamonds[ ,c("carat", "cut", "clarity", "color", "price")]
Rows <- dim(SubsetDiamonds)[1]
set.seed(1234)
newRow <- sample(Rows, size = 1000)
SubsetDiamonds <- SubsetDiamonds[newRow, ]
shinyServer(
  function(input, output) {
    #Output the options available for the buyer
    output$title1 <- renderText({"Here are your options, trust that it suits your needs."})
    output$NewData <- renderTable({
      input$Submit
      budget1 <- as.numeric(input$budgetIP[1])*1000
      budget2 <- as.numeric(input$budgetIP[2])*1000
      size1 <- as.numeric(input$sizeIP[1])
      size2 <- as.numeric(input$sizeIP[2])
      number <- input$numberIP
      cut <- input$cutIP
    
      #Picking just the diamonds that fit the buyers specification
      NewMatrix <- SubsetDiamonds[SubsetDiamonds$price >= budget1, ]
      NewMatrix <- NewMatrix[NewMatrix$price <= budget2, ]
      NewMatrix <- NewMatrix[NewMatrix$carat >= (size1), ]
      NewMatrix <- NewMatrix[NewMatrix$carat <= (size2), ]
      NewMatrix <- NewMatrix[NewMatrix$cut %in% cut, ]
      if (number == "Multiple") { 
        NewMatrix$number_of_diamonds <- as.integer(floor(budget2/NewMatrix$price)) 
        NewMatrix$combined_price <- as.integer(floor(budget2/NewMatrix$price)*NewMatrix$price)
      }
      NewMatrix <- NewMatrix[order(NewMatrix$carat), ]
      Rows1 <- dim(NewMatrix)[1]
      rownames(NewMatrix) <- 1:Rows1
      NewMatrix
      })
  })  