\name{tag.getSimilar}
\alias{tag.getSimilar}

\title{API call to tag.getSimilar} \description{API call to tag.getSimilar}

\usage{
tag.getSimilar(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{tag}{similar tags}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=311}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
tag.getSimilar("jazz")[1:5]
#[1] "piano"      "swing"      "jazz piano" "saxophone"  "fusion"    
}

