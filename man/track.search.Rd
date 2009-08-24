\name{track.search}
\alias{track.search}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to track.search} \description{API call to track.search}
\usage{
track.search(track, artist = NA, limit = NA, page = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{track}{track title}
  \item{artist}{artist name}
  \item{limit}{limit of responses}
  \item{page}{page to start reporting from, based on limit}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{track}{track title}
  \item{artist}{artist name}
  \item{listeners}{number of listeners}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=286}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{
track.search("Find A Way", "A Tribe Called Quest")

# $track
# [1] "Find a Way"

# $artist
# [1] "A Tribe Called Quest"

# $listeners
# [1] "46199"
}
