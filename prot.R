library(languageR)
library(MASS)

# > colnames(ratings)
# [1]  "Word"             "Frequency"        "FamilySize"       "SynsetCount"
# [5]  "Length"           "Class"            "FreqSingular"     "FreqPlural"
# [9]  "DerivEntropy"     "Complex"          "rInfl"            "meanWeightRating"
# [13] "meanSizeRating"   "meanFamiliarity"

# pdf
# default value: with = 480, height = 480
pdf("prot.pdf")
# 1行 2列
par(mfrow = c(1, 2))
barplot(
  xtabs(~ ratings$Length),
  xlab = "word length", col = "grey")
truehist(
  ratings$Length,
  xlab = "word length", col = "grey")
truehist(
  ratings$Frequency,
  xlab = "log word frequency", col = "grey")
truehist(
  ratings$SynsetCount,
  xlab = "log synset count", col = "grey")
truehist(
  ratings$FamilySize,
  xlab = "log family size", col = "grey")
truehist(
  ratings$DerivEntropy,
  xlab = "derivational entropy", col = "grey")
dev.off()
