library(dplyr)
mpg_raw <- read.csv('resources/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_raw)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_raw))

susp_raw <- read.csv('resources/Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- susp_raw %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )
lot_summary <- susp_raw %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )

t.test(susp_raw$PSI,mu=1500)

t.test(subset(susp_raw,Manufacturing_Lot=='Lot1')$PSI,mu=1500)
t.test(subset(susp_raw,Manufacturing_Lot=='Lot2')$PSI,mu=1500)
t.test(subset(susp_raw,Manufacturing_Lot=='Lot3')$PSI,mu=1500)
