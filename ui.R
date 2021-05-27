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
library(shinyjs)

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
        f7Button(inputId="Chemical",label="Chemicall",fill=FALSE),
        f7Button(inputId="Temperature",label="Temperature",fill=FALSE)
        
        )
      )
    ,
    f7Tabs(
      id = "tabs",animated=FALSE,
      f7Tab(
        tabName = "Explore",
        align = "center",
        h4("Tap anywhere on the wheel to learn more about an energy type"),
        img(
          src = 'BGEEW Light.svg',
          usemap = '#image-map',
          height = 470,
          width = 471
        ),
        HTML(
          '
<map name="image-map">
<area target="_self" title="Gravity" href="?tap=Gravity" coords=221,185,249,185,301,19,232,5,160,19" shape="poly">
<area target="_self" title="Motion" href="?tap=Motion" coords=249,185,301,19,369,48,418,99,276,203" shape="poly">
<area target="_self" title="Mechanical" href="?tap=Mechanical" coords=418,99,276,203,286,234,465,234,451,161" shape="poly">
<area target="_self" title="Electrical" href="?tap=Electrical" coords=286,234,465,234,456,301,423,365,277,265" shape="poly">
<area target="_self" title="Pressure" href="?tap=Pressure" coords=277,265,423,365,376,418,312,452,252,284" shape="poly">
<area target="_self" title="Sound" href="?tap=Sound" coords=312,452,252,284,219,285,168,452,236,465" shape="poly">
<area target="_self" title="Radiation" href="?tap=Radiation" coords=219,285,168,452,101,422,48,373,193,266" shape="poly">
<area target="_self" title="Biological" href="?tap=Biological" coords=48,373,193,266,185,236,0,234,16,305" shape="poly">
<area target="_self" title="Chemical" href="?tap=Chemical" coords=185,236,0,234,16,164,44,103,191,205" shape="poly">
<area target="_self" title="Tempterature" href="?tap=Temperature" coords=44,103,191,205,217,185,160,19,100,51" shape="poly">
</map>
              '
        )
      )
      ,
      f7Tab(
        tabName = "Gravity",
        hidden = FALSE,
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
