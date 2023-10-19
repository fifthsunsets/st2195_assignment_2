library(rvest)
cars_url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
html <- read_html(cars_url)

cars <- html_node (html,".wikitable")
cars <- html_table(cars, fill=TRUE)

write.csv(cars,"/Users/anggun/Desktop/school/st2195 asg/st2195_assignment_2/r_csv//cars.csv")