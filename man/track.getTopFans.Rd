\name{track.getTopFans}
\alias{track.getTopFans}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{API call to track.getTopFans} \description{API call to track.getTopFans}
\usage{
track.getTopFans(track = NA, artist = NA, mbid = NA, key = lastkey, parse = TRUE)
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
  \item{username}{username}
  \item{weight}{match weight}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=312}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{

genres = c("jazz", "rock", "rap")
tracks = do.call("rbind", lapply(genres, function(x)do.call("cbind", tag.getTopTracks(x))[1,]))
weight = apply(tracks, 1, function(x)track.getTopFans(x[1], x[2])$weight)
##Not Run - Plot weights by genre
#matplot(w, type = "l", xlab = "rank", ylab = "match", col ="black", lty =1:3)
#legend("topright", labels = genres, col = "black", lty =1:3)


}
