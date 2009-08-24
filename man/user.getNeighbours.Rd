\name{user.getNeighbours}
\alias{user.getNeighbours}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to user.getNeighbours} \description{API call to user.getNeighbours}
\usage{
user.getNeighbours(username, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{limit}{limit to return}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{username}{username}
  \item{match}{degree of match statistic}
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=264}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

user.getNeighbours("monkeycatfm")$match

}
