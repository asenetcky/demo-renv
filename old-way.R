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







# ask yourself what version of these packages did you install?




# for an EDA this might not matter as much but when you're
# collaborating, when you're putting your work out into
# the world and your reputation is on the line, you might
# want to ensure your work, well, works.



# then you go to share with yourself on another machine
# of with a colleague at work and they run your script
# and the output is slightly different or it
# fails because they don't have the same version of
# the packages installed, or maybe they have dependency
# conflicts on their system with your script dependency

# THE DREADED "it works on my machine" STRIKES AGAIN!


# So what do we do?

# adopt a dependency mindset
# How can I do that, and still be lazy?
