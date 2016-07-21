\name{combineArrays}
\alias{combineArrays}
\alias{combineArrays,RGChannelSet,RGChannelSet-method}
\alias{combineArrays,MethylSet,MethylSet-method}
\alias{combineArrays,GenomicMethylSet,GenomicMethylSet-method}
\alias{combineArrays,RatioSet,RatioSet-method}
\alias{combineArrays,GenomicRatioSet,GenomicRatioSet-method}
\title{
A method for combining different types of methylation arrays into a
virtual array.
}
\description{
A method for combining different types of methylation arrays into a
virtual array. Specifically, the 450k array and the EPIC array share
many probes in common.  This functions combines data from the two
different array types and outputs a data object of the user specified
type.  Essentially this new object will be like (for example) an EPIC
array with many probes missing.
}
\usage{
\S4method{combineArrays}{RGChannelSet,RGChannelSet}(object1, object2,
                  outType = c("IlluminaHumanMethylation450k",
                              "IlluminaHumanMethylationEPIC"),
                  verbose = TRUE)
\S4method{combineArrays}{MethylSet,MethylSet}(object1, object2,
                  outType = c("IlluminaHumanMethylation450k",
                              "IlluminaHumanMethylationEPIC",
                              "IlluminaHumanMethylation27k"),
                  verbose = TRUE)
\S4method{combineArrays}{RatioSet,RatioSet}(object1, object2,
                  outType = c("IlluminaHumanMethylation450k",
                              "IlluminaHumanMethylationEPIC",
                              "IlluminaHumanMethylation27k"),
                  verbose = TRUE)
\S4method{combineArrays}{GenomicMethylSet,GenomicMethylSet}(object1, object2,
                  outType = c("IlluminaHumanMethylation450k",
                              "IlluminaHumanMethylationEPIC",
                              "IlluminaHumanMethylation27k"),
                  verbose = TRUE)
\S4method{combineArrays}{GenomicRatioSet,GenomicRatioSet}(object1, object2,
                  outType = c("IlluminaHumanMethylation450k",
                              "IlluminaHumanMethylationEPIC",
                              "IlluminaHumanMethylation27k"),
                  verbose = TRUE)
}
\arguments{
  \item{object1}{The first object.}
  \item{object2}{The second object.}
  \item{outType}{The array type of the output.}
  \item{verbose}{Should the function be verbose?}
}
\details{
  Still under development.

  SNP probes. Control probes.
}
\value{
  An object of class \code{RGChannelSet}, with the type of array given
  by the \code{outType} argument.
}
\author{
  Jean-Philippe Fortin and Kasper D. Hansen.
}
\examples{
if(require(minfiData) && require(minfiDataEPIC)) {
    library(minfiData)
    library(minfiDataEPIC)
    data(RGsetEx)
    data(RGsetEPIC)
    rgSet <- combineArrays(RGsetEPIC, RGsetEx)
    rgSet
}
}