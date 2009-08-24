\name{track.getSimilar}
\alias{track.getSimilar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to track.getSimilar} \description{API call to track.getSimilar}

\usage{
track.getSimilar(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE)
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
  \item{track}{track title}
  \item{artist}{artist name}
  \item{duration}{track duration}
  \item{match}{extent of match statistic}
  \item{artmbid}{mbid for the artist}    

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=319}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{

res = track.getSimilar("Video Killed the Radio Star", "The Buggles")
res$track[1]
#[1] "Take On Me"

res$match[1]
#[1] 5.67

}
