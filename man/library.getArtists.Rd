\name{library.getArtists}
\alias{library.getArtists}

\title{API call to library.getArtists} \description{API call to library.getArtists}

\usage{
library.getArtists(username, limit = NA, page = NA, key = lastkey, parse = TRUE)
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
  \item{artist}{Names of artists}
  \item{playcount}{album playcount}
  \item{artmbid}{artist mbid}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"  
}

\references{http://www.last.fm/api/show?service=371}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling errors.
}

\examples{
library.getArtists("monkeycatfm")$artist[1]
#[1] "A Tribe Called Quest"

library.getArtists("monkeycatfm")$playcount[1]
#[1] 1880
}
