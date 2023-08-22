library(httr)

translate_text <- function(text, source_lang, target_lang) {
  url <- paste0("https://translate.googleapis.com/translate_a/single?client=gtx&sl=",
                source_lang, "&tl=", target_lang, "&dt=t&q=", URLencode(text))
  
  response <- GET(url)
  translation <- content(response, "text")
  
  return(translation)
}

source_text <- "Hello, how are you?"
source_lang <- "en"
target_lang <- "es"

translated_text <- translate_text(source_text, source_lang, target_lang)
cat("Translated Text:", translated_text, "\n")