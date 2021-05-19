#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(shiny)
library(shinyMobile)

ui <- f7Page(
  title = "Tab Layout",
  theme = "light",
  f7TabLayout(
    navbar = f7Navbar(title = "Energy Wheel", leftPanel = TRUE),
    panels = tagList(
      f7Panel(
        side = "left",
        theme = "light",
        effect = "cover",
        id="leftpanel"
      ),
      f7Panel(
        side = "right",
        theme = "dark",
        effect = "reveal",
        "Right Panel"
      )
    )),
  f7Card(
    title = "Card header",
    sliderInput("obs", "Number of observations", 0, 1000, 500),
    h1("You only see me by opening the left panel"),
    plotOutput("distPlot"),
    footer = tagList(
      f7Button(color = "blue", label = "My button", href = "https://www.google.com"),
      f7Badge("Badge", color = "green")
    )
  )
)
