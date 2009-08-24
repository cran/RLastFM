\name{user.getTopArtists}
\alias{user.getTopArtists}

\title{API call to user.getTopArtists} \description{API call to user.getTopArtists}

\usage{
user.getTopArtists(username, period = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{period}{overall | 7day | 3month | 6month | 12month, defaults to overall}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}
\value{
If parse = TRUE,
  \item{artist}{artist name}
  \item{playcount}{playcount of artist}
  \item{mbid}{artist mbid}
  \item{rank}{rank of artist, usually 1:50, except for ties}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=300}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

a = user.getTopArtists("monkeycatfm")
#artist favoritism
a$playcount/max(a$playcount)
}
