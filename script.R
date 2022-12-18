library(tidyselect)
library(tidytext)
library(tidyverse)
library(gutenbergr)
library(here)


view(gutenberg_metadata)

bahai_books <- gutenberg_metadata %>% 
 filter(gutenberg_bookshelf == "Bahá'í Faith") 

shoghi_effendi_books <- gutenberg_metadata %>% 
  filter(str_detect(author, pattern = "Shoghi"))

gutenberg_metadata %>% 
  filter(title == "The Conference of the Birds") 

gutenberg_metadata %>% 
  filter(gutenberg_bookshelf == "Persian Literature") 

gutenberg_metadata %>% 
  filter(str_detect(author, pattern = "Baha'i World Centre")) %>% 
  view()

gutenberg_metadata %>%
    filter(str_detect(title, pattern = "Meister" )) %>% 
  view()



# load data with title
romeo <- gutenberg_works(title == "Romeo and Juliet") %>%
  gutenberg_download(meta_fields = "title")

  # load data with ID

my_mirror = "http://gutenberg.readingroo.ms/"

promised_day <- gutenberg_works(gutenberg_id == "16523") %>%
  gutenberg_download(meta_fields = "gutenberg_id", mirror = my_mirror)

# simultaneous downloads
texts <- gutenberg_download(c(768, 1260), meta_fields = "title", 
                            mirror = "http://mirrors.xmission.com/gutenberg/")


my_mirror <- "http://mirrors.xmission.com/gutenberg/"
thoreau_text <- gutenberg_works(author == "Thoreau, Henry David") %>%
  gutenberg_download(meta_fields = "title", mirror = my_mirror)


some_answered_questions <- read.delim(here("data", "some_answered_questions.txt"),sep="\t" )
