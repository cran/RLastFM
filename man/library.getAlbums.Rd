\name{library.getAlbums}
\alias{library.getAlbums}

\title{API call to library.getAlbums} \description{API call to library.getAlbums}

\usage{
library.getAlbums(username, limit = NA, page = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{Username, in quotes}
  \item{limit}{Number of albums to return. Default/max = 50.}
  \item{page}{Page number to start, given limit per page.}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{album}{Names of albums}
  \item{artist}{Names of artists}
  \item{playcount}{album playcount}
  \item{albmbid}{Album mbid}
  \item{artmbid}{Artist mbid}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"

}
\references{http://www.last.fm/api/show?service=321}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling errors.
}

\examples{
library.getAlbums("monkeycatfm")$artist[1]
#[1] "De La Soul"

library.getAlbums("monkeycatfm")$playcount[1]
#[1] 436
}
