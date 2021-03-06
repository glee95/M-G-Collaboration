RACE.IAT_raw_1 <- read.delim("~/Documents/Coding/GitHub/M-G-Collaboration/RACE IAT_raw_1.R", header=TRUE)
View(RACE.IAT_raw_1)
group_by(RACE.IAT_raw_1)
latency <- select(RACE.IAT_raw_1, latency)
summarise(latency, min = min(latency), max = max(latency), avg = mean(latency), med = median(latency), sd = sd(latency), var = var(latency), IQR = IQR(latency), range = diff(range(latency)))

#everything here makes sense except i'm not exactly sure of the functionality in this scenario

iat %>% group_by(subject, blocknum) %>%
  summarise(meanLatency = mean(latency),
            sdLatency = sd(latency))
