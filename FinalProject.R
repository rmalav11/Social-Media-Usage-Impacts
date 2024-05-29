projectData <- read.csv(file = "ProjectData.csv")
age <- projectData[,1]
gender <- projectData[,2]
timeSpent <- projectData[,3]
comparison <- projectData[,4]
positiveImpact <- projectData[,5]
negativeImpact <- projectData[,6]
procratination <- projectData[,7]
fomo <- projectData[,8]
mostUsedSM <- projectData[,9]
mean(age)
t.test()