\name{tag.search}
\alias{tag.search}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to tag.search} \description{API call to tag.search}

\usage{
tag.search(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag name}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}


\value{
If parse = TRUE,
  \item{tag}{tag name}
  \item{count}{tag count}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=273}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

res = tag.search("jazz")

}