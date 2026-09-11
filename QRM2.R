1. observations: nrow(movies1) * ncol(movies1)
variables: nrow(movies1)
subjects: ncol(movies1)

2. nominal: first_actor_gender
ordinal: not present
interval: release_date
ratio: budget

3. 
A. movies1$PR <- movies1$revenue / movies1$budget
mean(movies1$PR, na.rm = TRUE)
median(movies1$PR, na.rm = TRUE)
max(movies1$PR, na.rm = TRUE)
min(movies1$PR, na.rm = TRUE)

B. PR = revenue/budget, and some movies have budget = 0
C. Some movies have an NA value because their revenue or budget is missing. Therefore, the PR cannot be calculated for these movies.
D. movies1$PR[is.infinite(movies1$PR)] <- NA
mean(movies1$PR, na.rm = TRUE)
median(movies1$PR, na.rm = TRUE)
max(movies1$PR, na.rm = TRUE)
min(movies1$PR, na.rm = TRUE)
E. A PR of at least one means that the movie generates at least as much revenue as its budget.
sum(movies1$PR >= 1, na.rm = TRUE) / sum(!is.na(movies1$PR)) * 100

F.boxplot(movies1$PR,
          main = "Boxplot of Profitability Ratio",
          xlab = "Movies",
          ylab = "Profitability Ratio",
          na.rm = TRUE)
quantile(movies1$PR, probs = c(0, 0.25, 0.5, 0.75, 1), na.rm = TRUE)
The boxplot is strongly right-skewed and contains several high outliers. Most movies have a relatively low PR, while a small number of movies have a very high PR.
