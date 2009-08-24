\name{tag.getTopTags}
\alias{tag.getTopTags}

\title{API call to tag.getTopTags} \description{API call to tag.getTopTags}

\usage{
tag.getTopTags(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
  If parse = TRUE,
  \item{tag}{tag}
  \item{count}{tag count, appears to be absolute.}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=276}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
tag.getTopTags("jazz")$tag[1:5]
#[1] "rock"        "seen live"   "alternative" "indie"       "electronic" 
}
