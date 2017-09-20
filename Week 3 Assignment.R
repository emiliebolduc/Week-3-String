## Week 3 Assignement 

### Copy the introductory example. The vector 'names' sotres the estracted names. 

raw.data <- "555-1239Moe Szyslak(636) 555-0113Burns, C. Montgomery555-6542Rev. Timothy Lovejoy555 8904Ned Flanders636-555-3226Simpson, Homer5553642Dr. Julius Hibbert"
library (stringr)
name <- unlist(str_extract_all(raw.data,  "[[:alpha:]., ]{2,}"))
name

#### (a) Use the tools of this chapter to rearrange the vector so that all elements conform to the standard first_name last_name. 

unlist(str_extract_all(name, "(\\w+),\\s(\\w+)"))
unlist(str_extract_all(name, "(\\w+),\\s(\\w+)?(.\\s(\\w+))?"))

newname <- str_replace_all(name,"(\\w+),\\s(\\w+)?(.\\s(\\w+))?", "\\2\\3 \\1")
newname

#### source: https://stackoverflow.com/questions/33826650/last-name-first-name-to-first-name-last-name

#### (b) Construct a logical vector indicating whether a character has a title (i.e., Rev. and Dr.)

str_extract(string = newname, pattern = "(Rev|Dr)\\.")

#### (c) Construct a logical vector indicating whether a character has a second name.

str_extract(string = newname, pattern = "\\s(\\w+)(.\\s(\\w+))")

