\name{buildhPedigree}
\alias{buildhPedigree}
\concept{Simulation}% << so it's found
\title{Build a haplotype pedrigree from a haplotype list}
\description{
  Builds a haplotype pedigree from a list of objects of class
  \code{haplotype}. Objects have attributes \code{hID} and \code{phID0},
  \code{phID1}, the last two refer to the two haplotypes in the
  parent. Function can construct a new pedigree or continue a given pedigree.
  Simulate a list of haplotypes, either sampling using population
  parameters or from a previous list of haplotypes through a series of
  meioses.
}
\usage{
buildhPedigree(hPedigree = NULL,hList)
}
\arguments{
  \item{hPedigree}{If unspecified, the previous haplotype pedigree upon
    which buildhPed builds the additional haplotypes.}
  \item{hList}{A \code{list} with objects of class \code{haplotype}.}
}
\details{
  The function \code{buildhPedigree} uses the attributes \code{hID},
  \code{phID0}, \code{phID1} of objects of class \code{haplotype to
    build a pedigree of haplotypes. Each haplotype originates
    from a pair of parental haplotypes between which the meiosis event
    occured or has no known parental haplotypes.}
}
\value{
  A \code{data.frame}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotypes}} 
}
\examples{
example(SampleHaplotypes)
hPedigree <- buildhPedigree(hList = hList)
for(g in 1:10)
  {
    hList <- SampleHaplotypes(orig = hList,genDist
        = 1,roundDec = 3)
    hPedigree <- buildhPedigree(hPedigree=hPedigree,hList = hList)
  }
}
\keyword{datagen}
