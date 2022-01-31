library(tidyverse)
library(ggthemes)
library(glue)
library(knitr)
library(kableExtra)

opts_chunk$set(echo = FALSE, warning = FALSE, message = FALSE,
               cache = TRUE, out.width = "\\textwidth", dev = "png",
               fig.align = "center", dpi = 300)
               # root.dir = rprojroot::find_rstudio_root_file())

# is_integer <- function(x) all(all.equal(x, as.integer(x)) == TRUE)
# inline_hook <- function(x) {
#  if (!is_integer(x) && is.numeric(x)) x <- sprintf("%.2f", round(x, 2))
#  paste(as.character(x), collapse = ", ")
# }
# knit_hooks$set(inline = inline_hook)

kable <- function(...) knitr::kable(..., booktabs = TRUE, linesep = "")

# round and print trailing zeroes
roundp <- function(x, digits = 2) {
 sprintf(glue('%.{digits}f'), round(x, digits)) %>% str_replace("-", "–")
}

.font <- "Source Sans Pro"
.grey <- "grey70"
theme_set(theme_bw(base_family = .font))
theme_update(panel.grid = element_blank(),
             panel.border = element_blank(),
             legend.key = element_blank(),
             axis.line = element_line(),
             strip.background = element_blank(),
             strip.text = element_text(face = "bold"),
             plot.title.position = "plot")
.pal <- ggthemes::ptol_pal
.scale_colour_discrete <- ggthemes::scale_colour_ptol
.scale_fill_discrete <- ggthemes::scale_fill_ptol
.scale_colour_continuous <- viridis::scale_colour_viridis
.scale_fill_continuous <- viridis::scale_fill_viridis
.scale_colour_numerous <- scale_colour_discrete
.scale_fill_numerous <- scale_fill_discrete

label_caps <- function(value) {
 if_else(toupper(value) == value, value,
         paste0(toupper(substr(value, 1, 1)),
                tolower(substr(value, 2, nchar(value))))) %>%
  str_replace_all("_", " ")
}
