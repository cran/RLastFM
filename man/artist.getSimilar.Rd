\name{artist.getSimilar}
\alias{artist.getSimilar}

\title{API call to artist.getSimilar} \description{API call to artist.getSimilar}

\usage{
artist.getSimilar(artist, limit = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{artist}{Name of the artist, in quotes}
  \item{limit}{Limit number of results. Defaults to maximum value of 100}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  If it is a LIST, use
  \item{name}{Artist name}
  \item{mbid}{Artist mbid}
  \item{match}{last.fm metric for artist similarity}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=119}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}
\examples{
res = artist.getSimilar(artist = "Wilco")

#res$name[1:10]
#[1] "Jeff Tweedy"                "Billy Bragg & Wilco"       
#[3] "Uncle Tupelo"               "Loose Fur"                 
#[5] "Golden Smog"                "My Morning Jacket"         
#[7] "The Minus 5"                "Son Volt"                  
#[9] "Ryan Adams & The Cardinals" "The Jayhawks"              
}

