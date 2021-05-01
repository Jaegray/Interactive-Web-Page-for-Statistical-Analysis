---
title: "Readme Page"
date: "April 2021"
output: word_document
---

**Overview of "Interactive Web Page for Statistical Analysis"**

---

#### The purpose of this webpage is to provide a histogram-analysis platform for analyzing a set of 150 different flowers. The dataset for this simple-to-use statistical analysis page is based upon 150 random observations. Once the data is loaded onto the application, the user can manipulate the random number generator to observe the frequency distribution amongst the group of flowers. User is able to see how the frequency and numerical distribution change according to the sample size chosen by the user. 

#### Detailed Instruction for User: This webpage features a 1 main tab which is labeled as such, for the flower dataset. A slider bar is present for the user to control the population size based upon the original 150 data points. User is also able to create a title for the histogram output. The population chosen for the histogram is based upon the original dataset. User is able to view the numerical distribution on the basis of frequency for their desired population size. When the slider bar is moved the histogram will automatically conform to the chosen population size by the user. The title will be changed once the user presses the "Press Me" button. User is also able to view an outline of what a histogram is near the bottom of the webpage. 

---

##### The Shiny App Weblink is listed here: https://jaegray.shinyapps.io/ShinyProject/?_ga=2.121031758.756239511.1619812095-1415152340.1619564712




##### RunGitHub command is provided down below. Copy, paste, and run the code below to run the shiny application. 

```{r} 
install.packages("git2r")
install.packages("shiny")
library(git2r)
library(shiny)


runGitHub(repo = ("Jaegray/Rshinyapp"), getOption("Jaegray/Rshinyapp"), ref = "main", subdir = "R Shiny app.r", destdir = NULL)

```




##### Citations   
###### R. A. Fisher (1936). "The use of multiple measurements in taxonomic problems". Annals of Eugenics. 7 (2): 179-188.
###### RStudio Team (2020). RStudio: Integrated Development for R. RStudio, PBC, Boston, MA URL http://www.rstudio.com/.


			  
			  