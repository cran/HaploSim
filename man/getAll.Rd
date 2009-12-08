\name{getAll}
\alias{getAll}
\title{Get alleles}
\description{
  Extract the sequence of snp alleles from a list of objects of
  class \code{haplotype}.
}
\usage{getAll(hList,what = c("snp","qtl"),removeHomozygotes =
TRUE,translatePos = TRUE)
}
\arguments{
  \item{hList}{List of objects of class \code{haplotype}.}
  \item{what}{Specifies if snp or qtl alleles are extracted from
    haplotype objects.}
  \item{removeHomozygotes}{If TRUE (defualt), homozygote genotyes are
    removed from the snp panel.}
  \item{translatePos}{Translates marker positions to positions in
    Morgan, else keeps the positions as integers.}
}
\details{
  Function removes homozygous snp loci before extracting these.
}
\value{
  Matrix.
}
\examples{
example(AssignQTL)
hh <- getAll(hList = hList)
qq <- getAll(hList = hList,what = 'qtl')
}
\keyword{datagen}

