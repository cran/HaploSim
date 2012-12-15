\name{SampleBaseHaplotype}
\alias{SampleBaseHaplotype}
\concept{simulation}% << so it's found
\title{Simulate a base population haplotype}
\description{
  Simulates a base population haplotype.
}
\usage{
SampleBaseHaplotype(genDist,nDec,nLoc,pSnp = seq(0,1,length.out = nLoc))
}
\arguments{
  \item{genDist}{Map size of the simulated genome in Morgan.}
  \item{nDec}{Number of decimals until which marker positions are
    rounded. Partially specifies marker density on the chromosome.}
  \item{nLoc}{Maximal number of snp loci on genome, default is number of
  available positions on genome.}
\item{pSnp}{Optional,if specified the snp positions. Default:
  uniform distribution of loci over the whole genome. Consequence will
  be that loci have allele frequency equal to one. If NULL, positions
  will be randomly sampled for each haplotype and allele frequencies
  will be close to 0, depending on \eqn{nLoc / (genDist*10^{nDec})}.}
}
\details{
  Generally called by function \code{\link[HaploSim]{SampleHaplotypes}}.
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
hList <- sapply(1:10,function(x)SampleBaseHaplotype(genDist = 1,nDec
= 2,nLoc = 50))
}
\keyword{datagen}

