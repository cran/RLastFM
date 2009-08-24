\name{geo.getTopArtists}
\alias{geo.getTopArtists}

\title{API call to geo.getTopArtists} \description{API call to geo.getTopArtists}

\usage{
geo.getTopArtists(country, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{country}{Country name}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
 If parse = TRUE,
  \item{artist}{Artist name}
  \item{playcount}{Reported playcount}
  \item{mbid}{Artist mbid}
  \item{rank}{rank}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"

}
\references{http://www.last.fm/api/show?service=297}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{
res = geo.getTopArtists("Canada")
do.call("cbind", res)[1,1:2]
#      artist   playcount 
# "Radiohead"      "4103" 



}
