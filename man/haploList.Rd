\name{haploList}
\alias{haploList}
\title{Function to create objects of class 'haploList'}
\description{
  Function to create objects of class \code{'haploList'}. Can eiter copy
  the attributes of an earlier object of class \code{'haploList'} or
  create a new \code{'haploList'} object. Function mostly used within
  other functions.
}
\usage{
haploList(list = NULL,hList = NULL,nDec,genDist,nChrom = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list}{List of objects of class \code{'haplotype'}.}
  \item{hList}{Object of class \code{'haploList'}.}
  \item{nDec}{Number of decimal positions of new object.}
  \item{genDist}{Genome size of new object measured in Morgan.}
  \item{nChrom}{Number of chromosomes.}
}
\value{
  An object of class \code{'haploList'}. If \code{list} is not NULL,
  object of filled with objects of class \code{'haplotype'}.
}
\seealso{
  \code{\linkS4class{haplotype}},
  \code{\linkS4class{haploList}}
}
\examples{
hList <- haploList(nDec=  1,genDist = 1)
validhaploListObject(hList)
}
\keyword{datagen}

