# Objective function:
# Minimize
# x - 2y = c
# Subject to constraints:
# 2x + y <= 40
# 2x + 3y <= 90
# x + y >= 5

# Solving using R package:
library(lpSolve)

# Assigning coefficients:
objective <- c(1,-2)
constraints <- matrix(c(2,1,2,3,1,1),nrow=3,byrow=TRUE)
direction <- c("<=","<=",">=")
right_side <- c(40,90,5)

# Value of c:
lp("min",objective,constraints,direction,right_side)

# Values of x and y:
lp("min",objective,constraints,direction,right_side)$solution
