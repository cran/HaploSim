\name{validhaploListObject}
\alias{validhaploListObject}
\title{Function to validate an object of class 'haploList'}
\description{
  Checks of object is of class \code{'haploList'} and checks if all
  entries in \code{object@.Data} are of class
  \code{'haplotype'}. 
}
\usage{
validhaploListObject(object)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{Any object.}
}
\value{
  Logical
}
\seealso{
  \code{\linkS4class{haploList}},  \code{\linkS4class{haplotype}} 
}
\keyword{datagen}% __ONLY ONE__ keyword per line
