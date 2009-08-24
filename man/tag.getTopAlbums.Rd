\name{tag.getTopAlbums}
\alias{tag.getTopAlbums}

\title{API call to tag.getTopAlbums} \description{API call to tag.getTopAlbums}

\usage{
tag.getTopAlbums(tag, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tag}{tag}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
  If parse = TRUE,
  \item{album}{album title}
  \item{artist}{album artist}
  \item{albmbid}{album mbid}
  \item{artmbid}{artist mbid}
  \item{tagcount}{relative tag count - top result set at 100.}
  
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=283}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
tag.getTopAlbums("jazz")$album[1]
#[1] "Come Away With Me"

tag.getTopAlbums("jazz")$artist[1]
#[1] "Norah Jones"
}
