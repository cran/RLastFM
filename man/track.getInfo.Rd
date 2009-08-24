\name{track.getInfo}
\alias{track.getInfo}

\title{API call to track.getInfo} \description{API call to track.getInfo}
\usage{
track.getInfo(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE)
}

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
  \item{playcount}{reported playcount}
  \item{listeners}{reported number of listeners}  
  \item{album}{album title}
  \item{position}{track position}
  \item{duration}{track duration}  
  \item{artmbid}{mbid for the artist}  
  \item{albmbid}{mbid for the album}
  \item{id}{LastFM ID}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=356}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{

track.getInfo("Video Killed the Radio Star", "The Buggles")$playcount
#[1] 484685
}
