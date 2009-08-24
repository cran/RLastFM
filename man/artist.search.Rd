\name{artist.search}
\alias{artist.search}

\title{API call to artist.search} \description{API call to artist.search}

\usage{
artist.search(searchterm, limit = NA, page = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{searchterm}{Search term, in quotes}
  \item{limit}{limit of results to return. Defaults to maximum value of 20.}
  \item{page}{Results are paginated. If more than the first 20 results are requested, start at page = 2.}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{artist}{Artist name}
  \item{mbid}{Artist mbid}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=272}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = artist.search("Rolling")
#res$artist[1:3]
# [1] "The Rolling Stones"                    
# [2] "Rolling Stones"                        
# [3] "Rolling Stones & Dave Matthews"        
}
