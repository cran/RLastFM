\name{user.getRecentTracks}
\alias{user.getRecentTracks}

\title{API call to user.getRecentTrack} \description{API call to user.getRecentTrack}

\usage{
user.getRecentTracks(username, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{limit}{limit of tracks to return}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{track}{track title}
  \item{artist}{artist}
  \item{album}{album}
  \item{artmbid}{artist mbid}
  \item{albmbid}{album mbid}
  \item{date}{date of play}
  If parse = FALSE,
  a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=278}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

#last scrobble date:
user.getRecentTracks("monkeycatfm")$date[1]
}
