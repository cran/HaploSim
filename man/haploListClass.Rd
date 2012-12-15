\name{haploList-class}
\docType{class}
\alias{haploList-class}
\alias{[,haploList,ANY,missing-method}
\alias{c,haploList-method}
\alias{print,haploList-method}
\alias{show,haploList-method}

\title{Class "haploList"}
\description{Class definition of \code{haploList}. Extends lists to
  contian objects of class \code{haplotype}. Attributes are \code{nDec},
  the number of decimal positions and \code{genDist}, the genome size
  measured in Morgan.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("haploList", ...)}.
}
\section{Slots}{
	 \describe{
	   \item{\code{.Data}:}{Object of class \code{"list"} containing
	     objects of class \code{'haplotype'}}
	   \item{\code{genDist}:}{Object of class \code{"numeric"}
	     expressing the genome size in Morgan.}
	   \item{\code{nDec}:}{Object of class \code{"integer"}
	     expressing the number of decimal positions of the
	     haplotypes.}
	   \item{\code{nChrom}:}{Object of class \code{"integer"}
	     expressing the number of chromosomes.}
	 }
       }
\section{Extends}{
Class \code{"\linkS4class{list}"}, from data part.
Class \code{"\linkS4class{vector}"}, by class "list", distance 2.
}
\section{Methods}{
  \describe{
    \item{[}{\code{signature(x = "haploList", i = "ANY", j =
	"missing")}: subset and extract from object of class \code{'haploList'}}
    \item{c}{\code{signature(x = "haploList")}: concatenate object of
      class \code{'haploList'}.}
    
  }

}
\seealso{
  \code{\link[HaploSim]{SampleHaplotypes}},
  \code{\linkS4class{haplotype}}
}
\examples{
showClass("haploList")
}
\keyword{datagen}
