# The old way

# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("readr")
# install.packages("stringr")
# install.packages("tidyr")

# etc....

# -- or --
# install.packages("tidyverse")


# and then you would comment that out or erase it
# not really paying mind to where these get installed
# or their dependencies

# and then you would load the libraries
library(dplyr)
library(ggplot2)
library(readr)
library(stringr)
library(tidyr)

mtcars |>
  ggplot(aes(x = mpg, y = wt)) +
  geom_point() +
  theme_classic() +
  labs(title = "High Value Analysis",
       subtitle = "That needs to be Reproducible",
       x = "Number of Toddler Interruptions",
       y = "Productivity Index")




# then you go to share with yourself on another machine
# of with a colleague at work and they run your script
# and the output is slightly different or it
# fails because they don't have the same version of
# the packages installed, or maybe they have dependancy
# conflicts on their system with your script dependancy

# THE DREADED "it works on my machine" STRIKES AGAIN!


# So what do we do?

# adopt a dependancy mindset
# How can I do that, and still be lazy?
