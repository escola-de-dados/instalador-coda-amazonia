# Função para carregar e instalar os pacotes necessários para o Coda Amazônia 2022

instalador <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# usage
pacotes <- c("plotly","ggplot2","lubridate","rmarkdown","stringr","knitr",
             "dplyr","ggplot2","dplyr","RColorBrewer","tm","stringr","epiDisplay")

instalador(pacotes)