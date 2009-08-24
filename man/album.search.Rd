\name{album.search}
\alias{album.search}

\title{API call to album.search} \description{API call to album.search}

\usage{
album.search(searchterm, key = lastkey, limit = NA, parse = TRUE)
}

\arguments{
  \item{searchterm}{Search term, in quotes.}
  \item{key}{API key, defaults to global variable lastkey}
  \item{limit}{Return limit. Defaults to maximum of 30.}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{album}{Name of matching albums}
  \item{artist}{Name of matching artists}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=357}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{The API is sensitive to spelling. For example, searching for 
      "Yanke Hotel Foxtrot" will return 0 results.
}
\examples{

res = album.search("Yankee Hotel")
#res
#$album
#[1] "Yankee Hotel Foxtrot"       "Yankee Hotel Foxtrot Demos"
#
#$artist
#[1] "Wilco" "Wilco"
}
