# Detect proper script_path (you cannot use args yet as they are build with tools in set_env.r)
script_path <- (function() {
  args <- commandArgs(trailingOnly = FALSE)
  script_path <- dirname(sub("--file=", "", args[grep("--file=", args)]))
  if (!length(script_path)) {
    return("R")
  }
  if (grepl("darwin", R.version$os)) {
    base <- gsub("~\\+~", " ", base) # on MacOS ~+~ in path denotes whitespace
  }
  return(normalizePath(script_path))
})()

# Setting .libPaths() to point to libs folder
source(file.path(script_path, "set_env.R"), chdir = T)

config <- load_config()
args <- args_parser()

library(magrittr)
library(ompr)
library(ompr.roi)
library(ROI.plugin.glpk)

#Mamy cztery zmienne x[1], ..., x[4]
I <- 1:4

type <- "continuous"

# Dodaj zmienne do modelu
model <- MILPModel() %>%
    add_variable(x[I], type = type, lb = 0, ub = 1) %>%
    add_variable(f, type = "continuous")


# Dodaj ograniczenie
model <- model %>%
    add_constraint(x[1] == 1) %>%
    add_constraint(x[1]*8 + x[2]*5 + x[3]*3 + x[4]*2 <= 10)

# Ustaw funkcję celu i kierunek optymalizacji
model <- model %>%
    add_constraint(f == x[1]*15 + x[2]*12 + x[3]*4 + x[4]*2) %>%
    set_objective(f, "max")


wynik <- model %>%
    solve_model(with_ROI(solver = "glpk", verbose = TRUE))

wynik_f <- get_solution(wynik, f)
wynik_x <- get_solution(wynik, x[I])

print(wynik_f)
print(wynik_x)
