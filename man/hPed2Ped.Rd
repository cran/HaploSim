\name{hPed2Ped}
\alias{hPed2Ped}
\concept{Simulation}% << so it's found
\title{Transform a haplotype pedigree into a pedigree.}
\description{
  Transforms a haplotype pedigree into a pedigree. Individuals in a
  haplotype pedigree are identified through meiosis. The number of rows
  of the pedigree equals the number of unique combinations of haplotypes
  plus the number of haplotypes which did not 'participate' in a meiosis
  event. The latter haplotypes form individuals with only one haplotype
  and thus only one parent.
  Row number of the pedigree identifies individuals. The pedigree has
  four columns. Columns 3 and 4 identify the haplotypes   of the
  individual. Columns 1 and 2 identify parental individuals of   the
  individuals by their row number in the pedigree.
}
\usage{
hPed2Ped(hPed)
}
\arguments{
  \item{hPed}{The haplotype pedigree from which the pedigree is build.}
}
\value{
  A \code{data.frame}.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{}
%\note{}
\seealso{
  \code{\link[HaploSim]{SampleHaplotype}}, \code{\link[HaploSim]{buildhPedigree}}  
}
\examples{
example(buildhPedigree)
ped <- hPed2Ped(hPedigree)
}
\keyword{datagen}
