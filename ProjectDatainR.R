ProjectData <- read.csv(file = "ProjectDataNew.csv")
age <- ProjectData[,1]
gender <- ProjectData[,2]
hoursSpent <- ProjectData[,3]
comparison <- ProjectData[,4]
PositiveImpact <- ProjectData[,5]
NegativeImpact <- ProjectData[,6]
procrastinate <- ProjectData[,7]
Fomo <- ProjectData[,8]
Platform <- ProjectData[,9]

mean(age)
mean(gender)
mean(hoursSpent)
mean(comparison)
mean(PositiveImpact)
mean(NegativeImpact)
mean(procrastinate)
mean(Fomo)
t.test(hoursSpent ~ Fomo)
comparisonInsta <- ProjectData[Platform == "Instagram", 4]
comparisonnotInsta <- ProjectData[Platform != "Instagram", 4]
t.test(comparisonInsta, comparisonnotInsta, paired = FALSE, var.equal = FALSE)
t.test(Fomo ~ gender)
t.test(hoursSpent, Fomo,paired = FALSE, var.equal = FALSE)
t.test(hoursSpent,procrastinate,paired = FALSE, var.equal = FALSE)
t.test(hoursSpent,comparison,paired = FALSE, var.equal = FALSE)

plot(Fomo ~ gender)
sd(age)
sd(gender)
sd(hoursSpent)
sd(comparison)
sd(PositiveImpact)
sd(NegativeImpact)
sd(procrastinate)
sd(Fomo)

t.test(hoursSpent, Fomo,paired = TRUE, var.equal = FALSE)
t.test(hoursSpent,procrastinate,paired = TRUE, var.equal = FALSE)
t.test(hoursSpent,comparison,paired = TRUE, var.equal = FALSE)

relation <- lm(Fomo ~ hoursSpent)
summary(relation)

relation2 <- lm(procrastinate ~ hoursSpent)
summary(relation2)

relation3 <- lm(comparison ~ hoursSpent)
summary(relation3)

comparisonInsta <- ProjectData[Platform == "Instagram", 7]
comparisonnotInsta <- ProjectData[Platform != "Instagram", 7]
t.test(comparisonInsta, comparisonnotInsta, paired = TRUE, var.equal = FALSE)