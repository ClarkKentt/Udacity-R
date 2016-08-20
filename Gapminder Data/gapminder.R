# The Gapminder website contains over 500 data sets with information about
# the world's population. Your task is to download a data set of your choice
# and create 2-5 plots that make use of the techniques from Lesson 3.

# You might use a simple histogram, a boxplot split over a categorical variable,
# or a frequency polygon. The choice is yours!

# You can find a link to the Gapminder website in the Instructor Notes.

# Once you've completed your investigation, create a post in the discussions that includes:
#       1. any questions you answered, your observations, and summary statistics
#       2. snippets of code that created the plots
#       3. links to the images of your plots

# You can save images by using the ggsave() command.
# ggsave() will save the last plot created.
# For example...
#                  qplot(x = price, data = diamonds)
#                  ggsave('priceHistogram.png')

# ggsave currently recognises the extensions eps/ps, tex (pictex),
# pdf, jpeg, tiff, png, bmp, svg and wmf (windows only).

# Copy and paste all of the code that you used for
# your investigation, and submit it when you are ready.
# ====================================================================================


#I've decided to check how development of countries corelates with number of calories their citizens consumes.
#To make this I'd have to combine 2 datasets: kcalories consumed per year and country along with gdp per capita


#load libraries
library("ggplot2")

#pre variables
dataset_kcal = "https://spreadsheets.google.com/pub?key=0ArfEDsV3bBwCdGlYVVpXX20tbU13STZyVG0yNkRrZnc&output=csv"
dataset_gdp = "https://spreadsheets.google.com/pub?key=0AkBd6lyS3EmpdHo5S0J6ekhVOF9QaVhod05QSGV4T3c&output=csv"
location_kcal = "C:/Users/reewise/Documents/GitHub/Udacity-R/Gapminder Data/kcal.csv"
location_gdp = "C:/Users/reewise/Documents/GitHub/Udacity-R/Gapminder Data/gdp.csv"

#download datasets
download.file(dataset_kcal,location_kcal)
download.file(dataset_gdp,location_gdp)

gdp = read.csv("gdp.csv",sep = ",")
kcal = read.csv("kcal.csv", sep = ",")

