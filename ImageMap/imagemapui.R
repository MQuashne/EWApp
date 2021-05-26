#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
ui <- fluidPage(
navlistPanel(id="mainnav",
tabPanel(title="Wheel",value="wheel",        
         
         img(src = 'EnergyWheel.png', usemap = '#image-map',height=470,width=480),
         HTML('
<map name="image-map">
<area target="_self" title="Gravity" href="?tap=gravity" coords=219,175,260,175,308,13,170,13" shape="poly">
<area target="_self" title="Motion" href="?tap=motion" coords=260,175,308,13,438,96,293,197" shape="poly">
<area target="_self" title="Mechanical" href="?tap=mechanical" coords=438,96,293,197,305,235,480,235" shape="poly">
<area target="_self" title="D" href="?letter=4" coords=50,50,100,50,100,100,50,100" shape="poly">
</map>
              ')),
tabPanel(title="Gravity",value="gravity"),
tabPanel(title="Motion",value="motion"),
tabPanel(title="Mechanical",value="mechanical")
))

