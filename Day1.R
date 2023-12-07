# import data file
library(stringi)
data <- read.table(file = "input.txt", header = FALSE)


for (i in data) {
  first_digit <- stri_extract_first(i, regex = "\\d")
  last_digit <- stri_extract_last(i, regex = "\\d")
  new_digits <- stri_join(first_digit, last_digit)
 print(new_digits)
}

values <- as.numeric(new_digits)
sum(values)

?stri_paste()
