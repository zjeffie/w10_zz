here::i_am(
  "code/01_make_output.R"
)

set.seed(1)
random_numbers1 <- rnorm(100)

saveRDS(
  random_numbers1,
  file = here::here("output", "random_numbers1.rds")
)

set.seed(2)
random_numbers2 <- rgamma(100, shape = 1)

saveRDS(
  random_numbers2,
  file = here::here("output", "random_numbers2.rds")
)

set.seed(3)
random_numbers3 <- runif(100)

saveRDS(
  random_numbers3,
  file = here::here("output", "random_numbers3.rds")
)
# code/01_make_output1.R
# Generate three sets of random numbers and save as .rds

set.seed(123)

x <- rnorm(100)
y <- rnorm(100)
color_by <- runif(100)

output <- list(x = x, y = y, color_by = color_by)

dir.create("output", showWarnings = FALSE)
saveRDS(output, file = "output/random_numbers.rds")

message("Random numbers saved to output/random_numbers.rds")
