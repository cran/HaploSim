\name{RemoveHomozygotes}
\alias{RemoveHomozygotes}
\concept{simulation}% << so it's found
\title{Remove the homozygotic snp loci from a list of haplotypes}
\description{
  Finds homozygotic marker loci in a list of haplotypes and removes
  these from all haplotypes.
}
\usage{
RemoveHomozygotes(hList)
}
\arguments{
  \item{hList}{List of objects of class \code{haplotype}}
}
\value{
  A list of objects of class \code{haplotype}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotypes}}, \code{\link[HaploSim]{SampleHaplotype}}.
}
\examples{
hList <- SampleHaplotypes(nHaplotypes = 20,nLoc = 100,genDist =
1,nDec = 3) ## create objects
hList <- RemoveHomozygotes(hList)
}
\keyword{datagen}

