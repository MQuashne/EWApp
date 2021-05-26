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
  options = list(theme = "ios",
                 dark = FALSE),
  f7TabLayout(
    navbar = f7Navbar(title = "The Energy Wheel", leftPanel = TRUE),
    panels = tagList(
      f7Panel(
        side = "left",
        theme = "light",
        effect = "cover",
        id = "leftpanel",
        h3("Navigation"),
        f7Button(inputId="The Energy Wheel",label="Home",fill=FALSE),
        h3("Energy Types"),
        f7Button(inputId="Gravity",label="Gravity",fill=FALSE),
        f7Button(inputId="Motion",label="Motion",fill=FALSE),
        f7Button(inputId="Mechanical",label="Mechanical",fill=FALSE),
        f7Button(inputId="Electrical",label="Electrical",fill=FALSE),
        f7Button(inputId="Pressure",label="Pressure",fill=FALSE),
        f7Button(inputId="Sound",label="Sound",fill=FALSE),
        f7Button(inputId="Radiation",label="Radiation",fill=FALSE),
        f7Button(inputId="Biological",label="Biological",fill=FALSE),
        f7Button(inputId="Chemical",label="Chemical",fill=FALSE),
        f7Button(inputId="Temperature",label="Temperature",fill=FALSE)
        
        )
      )
    ,
    f7Tabs(
      id = "tabs",
      f7Tab(
        tabName = "Explore",
        align = "center",
        h4("Tap anywhere on the wheel to learn more about an energy type"),
        img(
          src = 'EnergyWheel.png',
          usemap = '#image-map',
          height = 470,
          width = 480
        ),
        HTML(
          '
<map name="image-map">
<area target="_self" title="Gravity" href="?tap=gravity" coords=219,175,260,175,308,13,170,13" shape="poly">
<area target="_self" title="Motion" href="?tap=motion" coords=260,175,308,13,438,96,293,197" shape="poly">
<area target="_self" title="Mechanical" href="?tap=mechanical" coords=438,96,293,197,305,235,480,235" shape="poly">
<area target="_self" title="D" href="?letter=4" coords=50,50,100,50,100,100,50,100" shape="poly">
</map>
              '
        )
      )
      ,
      f7Tab(
        tabName = "Gravity",
        hidden = TRUE,
        "Gravity definition and examples/questions"
      ),
      f7Tab(
        tabName = "Motion",
        hidden = TRUE,
        "Motion definition and examples"
      ),
      f7Tab(
        tabName = "Mechanical",
        hidden = TRUE,
        "Mechanical definition and examples"
      ),
      f7Tab(
        tabName = "Electrical",
        hidden = TRUE,
        "Electrical definition and examples"
      ),
      f7Tab(
        tabName = "Pressure",
        hidden = TRUE,
        "Pressure definition and examples"
      ),
      f7Tab(
        tabName = "Sound",
        hidden = TRUE,
        "Sound definition and examples"
      )
      ,
      f7Tab(
        tabName = "Radiation",
        hidden = TRUE,
        "Radiation definition and examples"
      )
      ,
      f7Tab(
        tabName = "Biological",
        hidden = TRUE,
        "Biological definition and examples"
      )
      ,
      f7Tab(
        tabName = "Chemical",
        hidden = TRUE,
        "Chemical definition and examples"
      )
      ,
      f7Tab(
        tabName = "Temperature",
        hidden = TRUE,
        "Temperature definition and examples"
      )
    )
  )
)


# ui <- f7Page(
#   Title = "Simple Layout",
#   options = list(theme = "ios",
#                  dark = FALSE),
#   f7SingleLayout(
#     navbar = f7Navbar(title = "Energy Wheel Explorer", leftPanel = TRUE),
#     f7Panel(
#       side = "left",
#       effect = "cover",
#       "Navigation Here Hopefully"
#     )
#     ,
#     f7Tabs(
#       id="tablist",
#       f7Tab(tabName = "Explore", align = "center", "Clicky Picture"),
#       f7Tab(tabName = "Gravity", "Gravitystuff"),
#       style=NULL)
#     )
#   )
