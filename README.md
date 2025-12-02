# Theme

Theme for plots inspired by Trafford Data Lab

---
## Instructions for loading the custom [ggplot2](http://ggplot2.tidyverse.org/) Kal modern theme

**NOTE:** In order for the script to run successfully you will need the following [Google Fonts](https://fonts.google.com/) installed on your system:

* [Roboto](https://fonts.google.com/specimen/Roboto?selection.family=Roboto)

you can check the fonts available using:
typefaces <- systemfonts::system_fonts()[, c("path", "index", "family", "style")]

---

**1. Load the ggplot2 package**

``` r
library(ggplot2)
```

**2. Provide a source path to the URL containing the custom theme**

``` r
source("https://raw.githubusercontent.com/Kathiralagesan/theme/main/ggplot2/theme_kal.R")
```

**3. Run theme_set() to override the current theme with the KAL modern theme**

``` r
theme_set(theme_kal_modern())
```

---

### An example 
``` r
# load the necessary packages
library(ggplot2) ; library(tidyverse) 

source("https://raw.githubusercontent.com/Kathiralagesan/theme/main/ggplot2/theme_kal.R")

theme_set(theme_kal_modern())

# load some data
data(mtcars)

# creare a plot

ggplot(mtcars, aes(x = mpg, y = drat)) +
  geom_point(color = '#ef8a47') +
  labs(
    title = "Relationship between MPG and Rear Axle Ratio",
    subtitle = "Analyzing the correlation between fuel efficiency and rear axle ratio in cars",
    x = "Miles Per Gallon (MPG)",
    y = "Rear Axle Ratio (drat)",
    caption = "Data: mtcars dataset"
  )
```
<img width="1468" height="1186" alt="image" src="https://github.com/user-attachments/assets/a3f11698-d0be-4f1e-b98b-ed78c5c16d50" />

## Authors

Dr. Kathirvel Alagesan
- Max Planck Unit for the Science of Pathogens | D-10117 Berlin | Germany
- ORCID [alagesan](https://orcid.org/0000-0002-7596-5558)
- www.mpusp.mpg.de
