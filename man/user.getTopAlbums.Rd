\name{user.getTopAlbums}
\alias{user.getTopAlbums}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to user.getTopAlbums} \description{API call to user.getTopAlbums}

\usage{
user.getTopAlbums(username, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{key}{API key, defaults to global variable lastkey}
  \item{limit}{limit of albums to return}
  \item{parse}{Parse the returned XML into a list?}
}
\value{
If parse = TRUE,
  \item{album}{album title}
  \item{artist}{artist name}
  \item{playcount}{playcount of tracks in album}
  \item{artmbid}{artist mbid}
  \item{albmbid}{album mbid}
  \item{rank}{rank of album, usually 1:50}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=299}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

play = user.getTopAlbums("monkeycatfm")$playcount
#relative enjoyment
play/max(play)
}
