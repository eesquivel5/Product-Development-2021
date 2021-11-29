library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Interacciones del usuario con graficas"),
    tabsetPanel(
        tabPanel('Interacciones con Plots',
                 plotOutput("plot_click_option",
                            click = 'clk',
                            dblclick = 'dclk',
                            hover = 'mouse_hover',
                            brush = 'mouse_brush'),
                 h3('Coordenadas'),
                 verbatimTextOutput('click_data'),
                 h3('Objetos Marcados (Verde)'),
                 verbatimTextOutput('mtcars_tbl')
        )
    )
))
