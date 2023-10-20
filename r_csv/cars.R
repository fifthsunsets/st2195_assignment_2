library(rvest)
cars_url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
html <- read_html(cars_url)

data_lists <- html %>%
  html_nodes(xpath = '//h2[contains(., "Example")]//following-sibling::pre') %>% html_text()

data <- data_lists[1]

write.table(data, file = "cars.csv", quote = FALSE, col.names = FALSE, row.names = FALSE)

read.csv("cars.csv")