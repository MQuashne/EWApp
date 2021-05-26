  library(shiny)
  library(shinyMobile)
  shinyApp(
    ui = f7Page(
      title = "Panels",
      f7SingleLayout(
        navbar = f7Navbar(
          title = "Single Layout",
          hairline = FALSE,
          shadow = TRUE,
          leftPanel = TRUE,
          rightPanel = TRUE
        ),
        panels = tagList(
          f7Panel(side = "left", id = "mypanel1"),
          f7Panel(side = "right", id = "mypanel2")
        ),
        toolbar = f7Toolbar(
          position = "bottom",
          icons = TRUE,
          hairline = FALSE,
          shadow = FALSE,
          f7Link(label = "Link 1", href = "https://www.google.com"),
          f7Link(label = "Link 2", href = "https://www.google.com")
        ),
        # main content
        f7Shadow(
          intensity = 10,
          hover = TRUE,
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
      )
    ),
    server = function(input, output, session) {
      observeEvent(input$mypanel2, {
        state <- if (input$mypanel2) "open" else "closed"
        f7Toast(
          text = paste0("Right panel is ", state),
          position = "center",
          closeTimeout = 1000,
          closeButton = FALSE
        )
      })
      output$distPlot <- renderPlot({
        if (input$mypanel1) {
          dist <- rnorm(input$obs)
          hist(dist)
        }
      })
    }
  )
