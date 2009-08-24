\name{album.getInfo}
\alias{album.getInfo}

\title{API call to album.getInfo} \description{API call to album.getInfo}

\usage{
album.getInfo(album = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE)
}

\arguments{
  \item{album}{Name of the album, in quotes}
  \item{artist}{Name of the artist, in quotes}
  \item{mbid}{Optionally, use the album mbid instead of album and artist}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{album}{name of the album}
  \item{artist}{name of the artist}
  \item{mbid}{mbid for the album}
  \item{releasedate}{album release date}
  \item{listeners}{reported number of listeners}
  \item{playcount}{reported playcount}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=290}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

res = album.getInfo(album = "Yankee Hotel Foxtrot", artist = "Wilco")

#res$releasedate
#[1] "17 Feb 2004"
}

