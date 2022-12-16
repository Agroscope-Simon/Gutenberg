library(tidyselect)
library(tidytext)
library(tidyverse)
library(gutenbergr)


view(gutenberg_metadata)

bahai_books <- gutenberg_metadata %>% 
 filter(gutenberg_bookshelf == "Bahá'í Faith ") 

gutenberg_metadata %>% 
  filter(title == "The Conference of the Birds") 

gutenberg_metadata %>% 
  filter(gutenberg_bookshelf == "Persian Literature") 

gutenberg_metadata %>% 
  filter(str_detect(author, pattern = "Rumi")) %>% 
  view()

gutenberg_metadata %>%
    filter(str_detect(title, pattern = "Rumi" )) %>% 
  view()

           