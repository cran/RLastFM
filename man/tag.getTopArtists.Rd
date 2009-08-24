\name{tag.getTopArtists}
\alias{tag.getTopArtists}

\title{API call to tag.getTopArtists} \description{API call to tag.getTopArtists}

\usage{
tag.getTopArtists(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
  If parse = TRUE,
  \item{artist}{artist}
  \item{tagcount}{relative tag count - top result set at 100.}
  \item{artmbid}{mbid}

If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=284}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
tag.getTopArtists("jazz")$artist[1]
#[1] "Miles Davis"
}
