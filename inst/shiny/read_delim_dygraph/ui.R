library("shiny")
library("shinyjs")
library("shinypod")
library("dygraphs")

fluidPage(
  useShinyjs(),
  titlePanel("CSV parser and dygraph"),
  sidebarLayout(
    sidebarPanel(
      read_delim_sidebar_side("csv"),
      tags$hr(),
      dygraph_sidebar_side("dyg")
    ),
    mainPanel(
      read_delim_sidebar_main("csv"),
      dygraph_sidebar_main("dyg"),
      dygraphOutput("csv_dyg")
    )
  )
)
