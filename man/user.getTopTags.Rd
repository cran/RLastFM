\name{user.getTopTags}
\alias{user.getTopTags}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to user.getTopTags} \description{API call to user.getTopTags}

\usage{
user.getTopTags(username, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{limit}{How many entries to return?}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}
\value{
If parse = TRUE,
  \item{tag}{tag}
  \item{count}{tag count}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=123}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

user.getTopTags("monkeycatfm")
}
