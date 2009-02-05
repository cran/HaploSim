\name{SampleHaplotype}
\alias{SampleHaplotype}
\concept{simulation}% << so it's found
\title{Simulate a haplotype}
\description{
  Simulates a haplotype, either sampling using population
  parameters or through a meiosis event with two parental haplotypes.
}
\usage{
SampleHaplotype(H0 = NULL,H1 = NULL,genDist,nDec,nChrom = 1,prMut =
1E-5,QTL = F,checkValidity = TRUE) 
}
\arguments{
  \item{H0}{If specified, the first parental haplotype.}
  \item{H1}{If specified, the second parental haplotype. If neither H0
    nor H1 are specified, a new haplotype is sampled from a base
    population. Errors message is displayed when only one haplotype is
    provided as meiosis occurs between two haplotypes.}
  \item{genDist}{Map size of the simulated genome in Morgan.}
  \item{nDec}{Number of decimals until which marker positions are
    rounded. Partially specifies marker density on the chromosome.}
  \item{nChrom}{Number of chromosomes, default at 1}
  \item{prMut}{Probability of marker bp mutation.}
  \item{QTL}{If TRUE, qtl alleles are inherited to the next
    generation. See function \code{\link[HaploSim]{AssignQTL}} for
    assigning qtl to a list of haplotypes.}
  \item{checkValidity}{If TRUE, tests if a pair of haplotypes is
    compatible; e.g. if the number of traits in both is equal (or 0) and
    if the sizes are equal.}
}
\details{
  Markers are continually spaced over the whole genome. Marker density
  is specified in \code{\link[HaploSim]{SampleBaseHaplotype}}. Position
  of 1 alleles is recorded and stored in @snp attribute of the object of
  class \code{haplotype}.
  If QTL is TRUE, haplotypes with QTL's need to be provided. If not,
  nothing happens apart from mutations (same prob. as for single
  basepairs).
  Function \code{SampleHaplotype} is generally called by function
  \code{\link[HaploSim]{SampleHaplotypes}}.
}
\value{
  An object of class \code{haplotype}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotypes}},
  \code{\link[HaploSim]{SampleBaseHaplotype}}
}
\examples{
hList <- SampleHaplotypes(nHaplotypes = 20,genDist =
1,nDec = 3,nLoc = 20) ## create objects
h <- SampleHaplotype(H0 = hList[[1]],H1 = hList[[2]],genDist =
1,nDec = 3)
}
\keyword{datagen}

