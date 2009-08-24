\name{track.getTopTags}
\alias{track.getTopTags}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to track.getTopTags} \description{API call to track.getTopTags}

\usage{
track.getTopTags(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{track}{track title}
  \item{artist}{artist name}
  \item{mbid}{optionally, artist MBID}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{tag}{tag}
  \item{count}{raw tag count}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=289}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{
a = track.getTopTags("Video Killed the Radio Star", "The Buggles")
##Not Run - plot tagcounts for top tags
#plot(a$count[order(a$count, decreasing = T)], type = "l")

}
