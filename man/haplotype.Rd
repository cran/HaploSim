\name{haplotype-class}
\docType{class}
\alias{haplotype-class}
\alias{print,haplotype-method}
\alias{show,haplotype-method}

\title{Class "haplotype" ~~~ }
\description{Definition of \code{'haplotype'} class.}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("haplotype", ...)}.
}
\section{Slots}{
	 \describe{
    \item{\code{snp}:}{Object of class \code{"integer"} containing the
      positions on the genome where the haplotype has a 1 allele. The
      number of snp positions is the genome size in Morgan times the
      number of decimal positions, both stored in \code{'haploList'} objects. }
    \item{\code{qtl}:}{Object of class \code{"list"}. Names of the list
      are the QTL positions, on the same scale as snp positions. Objects
      in the list are the QTL alleles.}
    \item{\code{hID}:}{Object of class \code{"numeric"} identifying the
      current object of class \code{'haplotype'}.}
    \item{\code{phID0}:}{Object of class \code{"numeric"} pointing to
      the first parental haplotype.}
    \item{\code{phID1}:}{Object of class \code{"numeric"} pointing to
      the second parental haplotype.}
  }
}
\section{Methods}{
No methods defined with class "haplotype" in the signature.
}
\seealso{
  \code{\link[HaploSim]{SampleHaplotype}},
  \code{\link[HaploSim]{SampleHaplotypes}},
  \code{\linkS4class{haploList}}
}
\examples{
showClass("haplotype") }
\keyword{datagen}
