% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methylation.R
\name{TCGAanalyze_survival}
\alias{TCGAanalyze_survival}
\title{Creates survival analysis}
\usage{
TCGAanalyze_survival(data, clusterCol = NULL, legend = "Legend",
  labels = NULL, risk.table = TRUE, xlim = NULL,
  main = "Kaplan-Meier Overall Survival Curves",
  ylab = "Probability of survival", xlab = "Time since diagnosis (days)",
  filename = "survival.pdf", color = NULL, height = 8, width = 12,
  dpi = 300, pvalue = TRUE, conf.int = TRUE, ...)
}
\arguments{
\item{data}{TCGA Clinical patient with the information days_to_death}

\item{clusterCol}{Column with groups to plot. This is a mandatory field, the
caption will be based in this column}

\item{legend}{Legend title of the figure}

\item{labels}{labels of the plot}

\item{risk.table}{show or not the risk table}

\item{xlim}{x axis limits e.g. xlim = c(0, 1000). Present narrower X axis, but not affect survival estimates.}

\item{main}{main title of the plot}

\item{ylab}{y axis text of the plot}

\item{xlab}{x axis text of the plot}

\item{filename}{The name of the pdf file.}

\item{color}{Define the colors/Pallete for lines.}

\item{height}{Image height}

\item{width}{Image width}

\item{dpi}{Figure quality}

\item{pvalue}{show p-value of log-rank test}

\item{conf.int}{show confidence intervals for point estimaes of survival curves.}

\item{...}{Further arguments passed to \link[survminer]{ggsurvplot}.}
}
\value{
Survival plot
}
\description{
Creates a survival plot from TCGA patient clinical data
using survival library. It uses the fields days_to_death and vital, plus a
columns for groups.
}
\examples{
clin <- GDCquery_clinic("TCGA-LGG", type = "clinical", save.csv = FALSE)
TCGAanalyze_survival(clin, clusterCol="gender")
TCGAanalyze_survival(clin, clusterCol="gender", xlim = 1000)
TCGAanalyze_survival(clin,
                     clusterCol="gender",
                     risk.table = FALSE,
                     conf.int = FALSE,
                     color = c("pink","blue"))
TCGAanalyze_survival(clin,
                     clusterCol="gender",
                     risk.table = FALSE,
                     xlim = c(100,1000),
                     conf.int = FALSE,
                     color = c("Dark2"))
}
