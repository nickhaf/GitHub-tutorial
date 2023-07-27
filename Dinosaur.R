# old version
# x <- c("Brontosaurus", "Trex", "Triceratops")
# sample(x, 1)

# new version
sample_dino <- function(dinos = c("T.rex", "Brontosaurus", "Triceratops"), n_sample = 1) {
dino_sample <- sample(dinos, size = n_sample)
return(dino_sample)
}
