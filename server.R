#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyjs)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
updateF7Tabs(session,id="tabs",selected="Explore")
    observe({
    query <- parseQueryString(session$clientData$url_search)
    if (!is.null(query[['tap']])) {
      updateF7Tabs(session,id="tabs",selected=query[['tap']])  
    }
  })
  
  observeEvent(input$'The Energy Wheel',{updateF7Tabs(session,id="tabs",selected="Explore")
    updateF7Panel(id="leftpanel")}
    )
  observeEvent(input$Gravity,{updateF7Tabs(session,id="tabs",selected="Gravity")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Motion,{updateF7Tabs(session,id="tabs",selected="Motion")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Mechanical,{updateF7Tabs(session,id="tabs",selected="Mechanical")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Electrical,{updateF7Tabs(session,id="tabs",selected="Electrical")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Pressure,{updateF7Tabs(session,id="tabs",selected="Pressure")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Sound,{updateF7Tabs(session,id="tabs",selected="Sound")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Radiation,{updateF7Tabs(session,id="tabs",selected="Radiation")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Biological,{updateF7Tabs(session,id="tabs",selected="Biological")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Chemical,{updateF7Tabs(session,id="tabs",selected="Chemical")
    updateF7Panel(id="leftpanel")}
  )
  observeEvent(input$Temperature,{updateF7Tabs(session,id="tabs",selected="Temperature")
    updateF7Panel(id="leftpanel")}
  )
  }

