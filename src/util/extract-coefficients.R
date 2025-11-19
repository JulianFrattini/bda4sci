get.coefficient.mean <- function(m, name.m) {
  coefs <- data.frame(model = name.m, m$coefficients)
  coefs <- cbind(factor = rownames(coefs), coefs) %>% 
    rename(estimate = "m.coefficients")
  rownames(coefs) <- 1:nrow(coefs)
  
  return(coefs)
}

get.coefficient.ci <- function(m, name.m) {
  ci <- data.frame(model = name.m, confint(m))
  ci <- cbind(factor = rownames(ci), ci) %>% 
    rename(all_of(c(lower = "X2.5..", upper = "X97.5..")))
  rownames(ci) <- 1:nrow(ci)
  
  return(ci)
}

get.coefficient.distributions <- function(m1, m2, name.m1, name.m2) {
  coefs1 <- get.coefficient.mean(m1, name.m1)
  coefs2 <- get.coefficient.mean(m2, name.m2)
  coefs <- rbind(coefs1, coefs2) %>% 
    filter(factor != "(Intercept)")
  
  ci1 <- get.coefficient.ci(m1, name.m1)
  ci2 <- get.coefficient.ci(m2, name.m2)
  ci <- rbind(ci1, ci2) %>% 
    filter(factor != "(Intercept)")
  
  distributions <- merge(x = coefs, y = ci, by = c("model", "factor"))
  return(distributions)
}