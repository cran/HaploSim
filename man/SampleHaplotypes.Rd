\name{SampleHaplotypes}
\alias{SampleHaplotypes}
\concept{simulation}% << so it's found
\title{Simulate a list of haplotypes}
\description{
  Simulate a list of haplotypes, either sampling using population
  parameters or from a previous list of haplotypes through a series of
  meioses.
}
\usage{
SampleHaplotypes(orig = NULL,nHaplotypes = 10,nMeioses = 2,gg = NULL,...)
}
\arguments{
  \item{orig}{If unspecified, the function samples base population
    haplotypes. If specified, the function requests a list
    containing objects of class \code{haplotype}.}
  \item{nHaplotypes}{The requested number of haplotypes.}
  \item{nMeioses}{The number of offspring from each individual. For details
    see below.}
  \item{gg}{If specified, the combinations of haplotypes in
    individuals. Meiosis only occur within individuals. If not
    specified, individuals are sampled as random combinations of haplotypes.}
  \item{\dots}{Additional arguments to be passed to function
    \code{SampleHaplotype}, \code{haploList} and \code{SampleBaseHaplotype}.}
}
\details{
  The function \code{SampleHaplotypes} creates individuals by randomly
  combining haplotypes from the list. Meiosis events in individuals
  create new haplotypes. Argument \code{nOff} sets the number of meiosis
  events within each individual. Argument \code{nHaplotypes} has only
  effect when sampling a base population. See
  \code{\link[HaploSim]{SampleBaseHaplotype}} for sampling base
  haplotypes and for arguments of this function.
}
\value{
  A list of length \code{nHaplotpes} or \code{nOff * length(orig)} of objects of class \code{haplotype}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotype}},
  \code{\link[HaploSim]{SampleBaseHaplotype}} 
}
\examples{
hList <- SampleHaplotypes(nHaplotypes = 20,nLoc = 100,genDist =
1,nDec = 3) ## create objects
for(g in 1:10)hList <- SampleHaplotypes(orig = hList,genDist
= 1,nDec = 3)
}
\keyword{datagen}
