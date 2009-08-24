\name{artist.getTopFans}
\alias{artist.getTopFans}

\title{API call to artist.getTopFans} \description{API call to artist.getTopFans}

\usage{
artist.getTopFans(artist, mbid = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{artist}{Name of the artist, in quotes}
  \item{mbid}{Optionally, use the artist mbid instead of artist}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{username}{Fan username}
  \item{weight}{weight of the fan}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=310}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = artist.getTopFans("Wilco")
plot(log(res$weight), type = "b")
}
