library(ggplot2)
library(grid)
library(gridExtra)

#cls <- function() cat(rep("\n",100))
#cls()
# Remove all the variables 
rm(list=setdiff(ls(), lsf.str()))

print_quartile <- function (v) {
  median <- median(v)
  mean <- mean(v)
  max <- max(v)
  min <- min(v)

  cat("Mean:", mean, "\n")
  cat("Median:", median, "\n")
  cat("Max:", max, "\n")
  cat("Min:", min, "\n")
}

first_three <- function (v, label, size) {
  cat("\n\nFirst Three\n")
  sortd <- sort(v)

  ret_label <- vector()
  ret_value <- vector()

  for(i in 0:2) {
    last <- sortd[i+1]
    id <- which(last == v)
    ret_label <- c(paste(label[id[1]], "\n(", size[id[1]], ")"), ret_label)
    ret_value <- c(last, ret_value)
  }

  retl <- list("value" = ret_value, "label" = ret_label)

  print(retl)
  return (retl);
}


max_three <- function (v, label, size) {
  cat("\n\nLast Three\n")
  sortd <- sort(v)

  ret_label <- vector()
  ret_value <- vector()

  for(i in 0:2) {
    last <- sortd[length(sortd) - i]
    id <- which(last == v)
    ret_label <- c(paste(label[id[1]], "\n(", size[id[1]], ")"), ret_label)
    ret_value <- c(last, ret_value)
  }

  retl <- list("value" = ret_value, "label" = ret_label)

  print(retl)
  return (retl);
}

print_stats <- function (df) {
  test <- as.vector(df[,1])
  size <- as.vector(df[,2])
  elapsed_compd <- sapply(df[,5], function(x) toString(x))
  elapsed_mp <- sapply(df[,6], function(x) toString(x))
  elapsed_pm <- sapply(df[,7], function(x) toString(x))
  
  elapsed_c_sec <-  as.vector(sapply(elapsed_compd, function(x) eval(parse(text=x))))
  elapsed_mp_sec <- as.vector(sapply(elapsed_mp, function(x) eval(parse(text=x))))
  elapsed_pm_sec <- as.vector(sapply(elapsed_pm, function(x) eval(parse(text=x))))
  elapsed_m_sec <- elapsed_mp_sec + elapsed_pm_sec

  print(max(size))
  print(min(size))

#  print("MP")
#  setEPS()
#  postscript("matcher.eps");

  cat("Compd stat:", "\n\n")
  print_quartile(elapsed_c_sec)
  retval_c <- max_three(elapsed_c_sec, test, size)
  retval_c <- first_three(elapsed_c_sec, test, size)

  cat("Matcher stat:", "\n\n")
  print_quartile(elapsed_m_sec)
  retval_m <- max_three(elapsed_m_sec, test, size)
  retval_m <- first_three(elapsed_m_sec, test, size)

#  imp_point <- c(retval_c$value[3] + 10, floor(retval_m$value[3]) - 2.5)
##imp_label <- c(gsub("/","::", retval_c$label[3]), gsub("/","::", retval_m$label[3]))
#  imp_label <- c(gsub(".*/","", retval_c$label[3]), gsub(".*/","", retval_m$label[3]))
#  print(imp_point)
#  print(imp_label)
#  boxplot(elapsed_c_sec, elapsed_m_sec, names=c("Compositional\nDecompiler\n(a)","Matcher\n(b)"), horizontal = TRUE, xlab = "Time (in secs)", axes=TRUE)
#  text(x=imp_point, labels=imp_label, y=c(1.15, 2.15),  cex=0.8)
#
#  dev.off()
}

# cat docs/reported_stats/1.log | parallel "echo {}; cd {}; make llstat; tail -n2 mcsema/compd.log ; tail -n3  mcsema/match_mcsema_proposed.log; tail -n3  mcsema/match_proposed_mcsema.log;cd - "   > docs/reported_stats/stats_compd_matcher_BS.time
# cat docs/reported_stats/1_7.log | parallel "echo {}; cd {}; make llstat; tail -n2 mcsema/compd.log ; tail -n3  mcsema/match_mcsema_proposed.log; tail -n3  mcsema/match_proposed_mcsema.log;cd - "   > docs/reported_stats/stats_compd_matcher_AS.time
#df <- read.table("stats_compd_matcher_AS.time", header = FALSE, sep=',')
df <- read.table("stats_compd_matcher_AS.time", header = FALSE, sep=',')
print_stats(df)














#  print("Compd")
#  setEPS()
#  postscript("docs/compd.eps");
#
#  retval <- max_three(elapsed_c_sec, test, size)
#  plotbox(elapsed_c_sec,  retval, "docs/compd.eps", 1)
#  print(retval)
#  imp_point <- retval$value
#  imp_label <- retval$label
#  boxplot(elapsed_c_sec, xlab =  "Time (secs)", horizontal=TRUE, axes=TRUE)
#  text(x=imp_point, labels=imp_label, y=1.06,  cex=0.6)
#  grid(col = "lightgray", lty="dashed")
#  dev.off()




#  print_quartile(mean_c, median_c, min_c, max_c, "compd", min_c_label, max_c_label)


#  lmts <- range(elapsed,elapsed_pm_sec)
#  par(mfrow = c(1, 2))
#
#boxplot(elapsed, ylab =  "Time (secs)", main = "Proving GN\nsubgraph-isomorphic to GNP\n F:FuncName, S:Size of lifted IR", ylim=lmts)

#plotbox <- function(elapsed, retval, file, hint) {
#  print(retval)
#  if(hint == 2) {
#    imp_point <- floor(retval$value)
#    imp_label <- retval$label
#  } else {
#    imp_point <- retval$value
#    imp_label <- retval$label
#  }
#
#  boxplot(elapsed, xlab =  "Time (secs)", horizontal=TRUE, axes=TRUE)
#  text(x=imp_point, labels=imp_label, y=1.06,  cex=0.6)
#  grid(col = "lightgray", lty="dashed")
#
#  # Save the file.
#}
#
#
