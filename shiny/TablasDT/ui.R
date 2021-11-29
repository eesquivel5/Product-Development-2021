
library(shiny)
library(DT)

shinyUI(fluidPage(

    titlePanel("tablas en DT"),
    tabsetPanel(
        tabPanel('tablas DT',
                 h1('Vista Basica'),
                 DT::dataTableOutput('tabla1'),
                 h2('Filtros'),
                 DT::dataTableOutput('tabla2')
                 ),
        tabPanel('click en tablas',
                 fluidRow(
                     column(6,
                            h2('Single Select Row'),
                            DT::dataTableOutput('tabla3'),
                            verbatimTextOutput('output1')
                            ),
                     column(6,
                            h2('Multiple Select Row'),
                            DT::dataTableOutput('tabla4'),
                            verbatimTextOutput('output2')
                            )
                 ),
                 fluidRow(
                     column(6,
                            h2('Single Select column'),
                            DT::dataTableOutput('tabla5'),
                            verbatimTextOutput('output3')
                     ),
                     column(6,
                            h2('Multiple Select column'),
                            DT::dataTableOutput('tabla6'),
                            verbatimTextOutput('output4')
                     )
                 ),
                 fluidRow(
                     column(6,
                            h2('Single Select cell'),
                            DT::dataTableOutput('tabla7'),
                            verbatimTextOutput('output5')
                     ),
                     column(6,
                            h2('Multiple Select cell'),
                            DT::dataTableOutput('tabla8'),
                            verbatimTextOutput('output6')
                     )
                 ),
                 fluidRow(
                     column(6,
                            h2('Single Select cell'),
                            DT::dataTableOutput('tabla9'),
                            verbatimTextOutput('output7')
                     ),
                     column(6,
                            h2('Multiple Select cell'),
                            DT::dataTableOutput('tabla10'),
                            verbatimTextOutput('output8')
                     )
                 )
                 )
    )

))
