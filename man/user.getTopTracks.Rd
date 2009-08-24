\name{user.getTopTracks}
\alias{user.getTopTracks}

\title{API call to user.getTopTracks} \description{API call to user.getTopTracks}

\usage{
user.getTopTracks(username, period = NA, key = lastkey, parse = TRUE)
}

\arguments{
  \item{username}{username}
  \item{period}{overall | 7day | 3month | 6month | 12month, defaults to overall}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}
\value{
If parse = TRUE,
  \item{track}{track name} 
  \item{artist}{artist name}
  \item{playcount}{playcount of artist}
  \item{artmbid}{artist mbid}
  \item{rank}{rank of track, usually 1:50, except for ties}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=301}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

a = user.getTopTracks("monkeycatfm")
#track favoritism
a$playcount/max(a$playcount)
}
