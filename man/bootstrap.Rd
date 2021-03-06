\name{bootstrap}
\alias{bootstrap}
\title{bootstrap}
\usage{
  bootstrap(x, fun, n = 1000L,
    mc.cores = getOption("mc.cores", 2L))
}
\arguments{
  \item{x}{\code{matrix}, rows: individuals, columns:
  observations}

  \item{fun}{function which creates the individual hclust
  object}

  \item{n}{\code{integer}, number of bootstrap replicates}

  \item{mc.cores}{\code{integer}, number of processes to
  run in parallel}
}
\value{
  \code{numeric} vector with frequencies of each node
}
\description{
  This function provides bootstrapping for hierarchical
  clustering (\code{\link{hclust}} objects).
}
\examples{
## hclust example
createHclustObject <- function(x)hclust(dist(x), "ave")

## bootstrap
b <- bootstrap(USArrests, fun=createHclustObject, n=100L)

## plot
hc <- createHclustObject(USArrests)
plot(hc)

## draw bootstrap values to corresponding node
bootlabels.hclust(hc, b, col="blue")
}
\references{
  Felsenstein, Joseph. \emph{Confidence limits on
  phylogenies: an approach using the bootstrap.} Evolution
  (1985): 783-791.

  Efron, Bradley, Elizabeth Halloran, and Susan Holmes.
  \emph{Bootstrap confidence levels for phylogenetic
  trees.} Proceedings of the National Academy of Sciences
  93.23 (1996): 13429-13429.
}
\seealso{
  \code{\link{dist}}, \code{link{hclust}}
}

