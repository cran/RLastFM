\name{geo.getTopTracks}
\alias{geo.getTopTracks}

\title{API call to geo.getTopTracks} \description{API call to geo.getTopTracks}

\usage{
geo.getTopTracks(country, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{country}{Country name}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
 If parse = TRUE,
  \item{track}{Track name}
  \item{playcount}{Reported playcount}
  \item{artist}{Artist name}
  \item{artistmbid}{Artist mbid}
  \item{rank}{rank}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=298}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}


\examples{

res = geo.getTopTracks("Albania")
do.call("cbind", res)[1,1:3]
#          track       playcount          artist 
#  "Sex on Fire"             "6" "Kings of Leon" 
}
