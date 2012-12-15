\name{SamplePedigree}
\alias{SamplePedigree}
\concept{simulation}% << so it's found
\title{Simulate a haplotypes in a pedigree}
\description{
  Simulates haplotypes within a given pedigree. Haplotypes for a base
  individual are sampled from a list of base haplotypes. Parameters for
  sampling haplotypes are passed to function \code{SampleHaplotype}.
}
\usage{
SamplePedigree(orig,ped,...)
}
\arguments{
  \item{orig}{List of objects of class \code{haplotype}. Haplotypes for
    base individuals are the result of a meiosis event between two
    haplotypes in this list.}
  \item{ped}{\code{data.frame} of three columns. Column 1 contains id's,
    column two and three id's of parental individuals. Pedigree is
    first ordered with function \code{orderPed} from the package
    \code{pedigree}.}
  \item{...}{Arguments to be passed to function \code{SampleHaplotype}.}
}
\details{
  Samples haplotypes for individuals in a pedigree and returns a
  pedigree with two additional columns which identify the two haplotypes
  of an individual together with a list of haplotypes. Uses function
  \code{SampleHaplotype} to sample a meiosis event between two parental
  haplotypes.
}
\value{
  A list with a pedigree and a list of objects of class
  \code{haplotype}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotype}},
  \code{\link[pedigree]{orderPed}}
}
\examples{
example(SampleHaplotypes)
ID <- 1:10
pID0 <- c(rep(0,5),1,1,3,3,5)
pID1 <- c(rep(0,4),2,2,2,4,4,6)
ped <- data.frame(ID,pID0,pID1)
phList <- SamplePedigree(orig = hList,ped = ped)
}
\keyword{datagen}

