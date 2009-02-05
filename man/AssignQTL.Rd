\name{AssignQTL}
\alias{AssignQTL}
\concept{simulation}% << so it's found
\title{Assigns QTL to a list of Haplotypes}
\description{
  Assigns QTL.
}
\usage{
AssignQTL(hList,nqtl = NA,frqtl = NA,sigma2qtl = NULL,shQTL = 1,scQTL = 1,
                      nTraits = 1,overlap = 0,MAF = 0.1,rmCausSNP = TRUE)
}
\arguments{
  \item{hList}{List of haplotype objects.}
  \item{nqtl}{If specified, the number of qtl which are placed on the
    genome.}
  \item{frqtl}{If specified, the fraction of heterozygous SNP loci which
    become QTL.}
  \item{sigma2qtl}{If specified, the qtl variance. If
    \code{length(sigma2qtl)<nqtl}, sigma2qtl is replicated until
    obtaining a vector of appropriate length. Can be specified as a list
    of length equal to nTraits.}
  \item{shQTL}{If alpha is not specified, shQTL specifies the shape
    parameter of the gamma distribution from which allele substitution
    effects are sampled.}
  \item{scQTL}{If alpha is not specified, scQTL specifies the scale
    parameter of the gamma distribution from which allele substitution
    effects are sampled.}
  \item{nTraits}{The number of traits.}
  \item{overlap}{Numeric between 0 and 1. Specifies the percantage of
    pleiotropic QTL.}
  \item{MAF}{Minor Allele Frequency. Loci with maf below MAF are not
    considered to become QTL. Do not count for frqtl.}
  \item{rmCausSNP}{Remove causative SNPs. }
}

\value{
  A list of length \code{nHaplotpes}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotype}} 
}
\examples{
hList <- SampleHaplotypes(nHaplotypes = 20,nLoc = 100,genDist =
1,nDec = 3) ## create objects
 hListd <- SampleHaplotypes(orig = hList,genDist = 1,nDec = 3)
hList <- AssignQTL(hList,frqtl = 0.1,MAF = 0.0)
hListd <- SampleHaplotypes(orig = hList,genDist = 1,nDec
= 3,QTL = TRUE)
}
\keyword{datagen}
