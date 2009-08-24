\name{tag.getTopTracks}
\alias{tag.getTopTracks}

\title{API call to tag.getTopTracks} \description{API call to tag.getTopTracks}

\usage{
tag.getTopTracks(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
  If parse = TRUE,
  \item{track}{track}
  \item{artist}{artist}
  \item{tagcount}{relative tag count - top result set at 100.}
  \item{artmbid}{artist mbid}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=285}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
tag.getTopTracks("jazz")$track[1]
#[1] "So What"

tag.getTopTracks("jazz")$artist[1]
#[1] "Miles Davis"
}
